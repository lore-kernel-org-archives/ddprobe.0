Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A09C13F00B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 23:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716937463; cv=none; b=BsuZ8egKLFZ3WxCMM3xBCZ3kgEdH1VVMo4mX6gsEZ+dG1hTBxMO/uH7Fb2OnCfqlREbYVhMMpvWiB9feXtdJ3NrhZ3XAlUyV+W/MFvjWqfPk/wbQbgsMmar6MmdZGzzLMkFegVZkzp9zaERzry5JDCDmEz+zeMnKZC41aulL/qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716937463; c=relaxed/simple;
	bh=4tRVajYsmHUE6wpipjMJbr33M9+BMp1KRTKWEwji4os=;
	h=To:Subject:From:Message-Id:Date; b=i6qnZIXogYoCAtj0D52VvHHCzFJnKQgecYR79ZhIXVM0S7VPgxgZX43GxxMfeBrL9IUbD83wUsglUQMxUQzSYbUVn0N7SfcvfZT955zuJORuRuElnMK4IAHm5fgkyzr7OgG3w4ksvjNQqAMA2jSkD9RdJn52tH3d/kT7d3PjaLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+cH/QO5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+cH/QO5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23B8C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 23:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716937462;
	bh=4tRVajYsmHUE6wpipjMJbr33M9+BMp1KRTKWEwji4os=;
	h=To:Subject:From:Date:From;
	b=c+cH/QO5wrVhin0zNpHz+bX6FLD7imET5lpo1MCzpBWc7afEl3Pz2OkGTTjL5pwKQ
	 j7OFHoc3O6JD4Op0T5emFUx6pbCT9bR2eAsD5PtQqNmoxYFEG+I3XCLROs3VGjvTMq
	 ArrysGyhGsv4DkBcRks5lJh0ndARRs9I0LI9PQCw3Flyn9DgXkNToMtAsBj9ZrUSY7
	 ymkhzSYuyGkpUJm9K81oxvrzfmANwT+VQ42umyWraBCwzNZQQVftiw5zRyrQ+BPcJF
	 fa9JPthxrugLPMZUgjLy0v/qlF+NpBS7MihreZCxOlpEIhtqKEVERikjjn9hbc7ApK
	 KJtpsib2+cuKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD05EC25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 23:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171693746276.32583.2724131973999594751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 430f305e185f1b97818e9174f2ba4cc3ce17acb0e5ac4f67312dcc2b8e8497bc
Date: Tue, 28 May 2024 23:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716937462
