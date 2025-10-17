Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5B0345725
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760706594; cv=none; b=X0BuR5tAdl0Jr5NKgP7u/9cEnA/ITqcK96iKlYomGANha1l8GTtITAqS908Dld09JXaN4mtW0nYRa66FZVyfdr0YOdQtdzyUao/Pa18SfPxX5MJPAD5BjKD2Rue1vqw56SI7IVny5wGqs+Yx/FNQT60r8xXgbomuoBa7UWydXlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760706594; c=relaxed/simple;
	bh=x5c+162LentjlQTvc9XR7VfoFkcsh3AJoxZ/5Q1HwIQ=;
	h=To:Subject:From:Message-Id:Date; b=rqCypf4+oZOitO76SeTOjMh74uJhrF78dF45SIVnkrZ1eV9Ee7V+EBAfI0ytscDvyVaxKVU1yrI3+3qu+yyQfZyRt/XJFsjw72ChCvLX3MxcvbftzhkXCpKFLGsKCid3YTubNUx5tp0OtL3pJErLtNw7Vs6BIymF4SOANYgfohU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=izvPR9Sh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="izvPR9Sh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F7DC4CEF9
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760706593;
	bh=x5c+162LentjlQTvc9XR7VfoFkcsh3AJoxZ/5Q1HwIQ=;
	h=To:Subject:From:Date:From;
	b=izvPR9Shl9jh8vCl12RUJbapUT0DgdcM02Z2eRjztGUgA/UOZbscy5+Rg7ZnhMAHV
	 VkdNtH+R0i9Fmm5X+IgMuSHeAw9jSfhJlsBwcND+Lgu6ZEOp3/CXgUjbuWo0YSCWfO
	 vbdlacJXohFHa7l/DBf8VG+KSMuoOgbYm+oTXzJ5Cl0flaSbOZnK9c9rocTKN4wudt
	 /heG20rB+6pXwcicdT3kVQh4W1nlIlJF15Wb6F06jGK8kRqfUAJnAfHJ37oqGz5Q+B
	 bgl7FdXYe6N4vAzYRMRUUrc2Ndls/URRpnXA3lD99VQmQqlwh76XlLxRVtQPL20UhI
	 9aGTzZNt1RlCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93134CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176070659359.19545.13535033485527572990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dafa9604ed6b3ee9bf579ceac46643c291283da13de938930162d97cf421d962
Date: Fri, 17 Oct 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760706593
