Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479E033F38A
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 01:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782696514; cv=none; b=GVMFhncrIxphqKIK/UKnkp7jMuW3DbFs74S/thLzS1Z+mh0Z/R2JD33WlL00C67rgNq320GtnZDdyjhuohYQZLGge5nYaUCqu6sSqk0PjY7+ojXuybHR4q3VJaoCi6CyDHxJ6KXWx+oSFLLXMTukKLkptnxKZKmmGjrfR0wRTWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782696514; c=relaxed/simple;
	bh=7rafOunk9dIQfO0SQHUI3LePQBl5NSB/NybkdraktaE=;
	h=To:Subject:From:Message-Id:Date; b=b4PtHFNIWuYK66pTe2yEo2d3IoaCdrvKtzujDm6KslPlGc/iQFq8y/pYl+U9MtVFI8VxkhC2g32A5Ft/3XqVS8tauqrY/nf529jPoVP5JGa/3GGjVf6hm0SV4xvwuJ5OHzvBeat9+sNQ5IRLPKApFFAGZ5TDFCh5oML044450G8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubOtJndc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubOtJndc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1118C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 01:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782696513;
	bh=7rafOunk9dIQfO0SQHUI3LePQBl5NSB/NybkdraktaE=;
	h=To:Subject:From:Date:From;
	b=ubOtJndcmK5Ov23LXQpzQBU/wdsXa2/WUPgwSzB+gnC6TOCgi0WNOoKWsJ9zVt1E2
	 mqlo5g0Rkj2cuQnhLjA5zh0x91J38lJ6zuNuUWZPRO93qStKkrjgiocJLTkKUzMeoj
	 W98y3EGSbB4SKKMAvEe39hbXxRl814w3IGh/uF/pLRX8cCRQAYXokk46+l2RqW30vL
	 J/g+33PLLvqU6CneU7BuHfTI/+5th0nh6DL2LVAu+BuWGRTs7ky/TkHTfKIrHVwxZx
	 +kDztZhIyrt/6BPhaLYguHHL3n3pVxP+O0CBZVKn6wx6iPxBeWL7/QGkmK4r9t7wBh
	 H3G1mviwuVyFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A936AC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 01:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178269651368.10792.7547067598716397619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 980beb8702580200631fc3599181f834c258cb7b64873e9682a46bfbb7e89f4c
Date: Mon, 29 Jun 2026 01:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782696513
