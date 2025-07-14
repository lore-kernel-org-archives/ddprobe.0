Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD9A1FF61E
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752471594; cv=none; b=FiUWpeMm+bBqy2hwRMBvdZzg7oc69kKQcYaLdSQFsJrklCBvJ3MHWa2gDlHjpQMuRVTQ0u3WBD3N2WSX6KbrjAK57hl0/pG9Xvyi3ohbj/rsUfSblwIQxWlNRRIDGTPeg1fwxl/+TfPp9ety6aA8AFCvtPO/NFom/ktdD38+i0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752471594; c=relaxed/simple;
	bh=D0gF2XeRBASP8yTfysSfm12rmIXyop+oa9ayWnmhiVo=;
	h=To:Subject:From:Message-Id:Date; b=qBFGBcbDWgpArTlgA+E5YGg5funJ+bc5ooN5HJ+RbB1IEe+con5hwvHayUW/17po7CjmibmVrLCLoMnwJf7ZPDnvjB0R39TbkPfPyRnHyy37str8ADx4TFq3o8DSqSjOP+eEFpaeMO1n55yY3VuQwOYNtGYx/x/h1Qmas7akMRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0QCuB8j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0QCuB8j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4D1C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752471593;
	bh=D0gF2XeRBASP8yTfysSfm12rmIXyop+oa9ayWnmhiVo=;
	h=To:Subject:From:Date:From;
	b=B0QCuB8jeSg/tG1G+QEuU3/jd805KEBKvyY3chtlcLlaZkFVSLGtvRM60HkdJn/sU
	 43yKW08RjbYRE3zWd1UB0Io8xE0mfwkYJOj7jYm2US/aC1dV5nWhhCQamzbOWmOONf
	 RITQhxQBXaLVdRQF+UVwcY61COIsYS/Z2TJL2NvfF5QerUBUpQbBPKvOm0BrLKN6Nh
	 1ZtRLsXNuvvt0tUjx6I8g/HciF8t/Kf8mzf00BZT7EvQphnZRG4UjMR6VueN/sOiAD
	 nu5rID7HgsSMpviKT3mHmJrG0iEEleaJo+g1BqGaZ2sdR7AUfW56NpUM1UEibqDgi0
	 +M7SFvLJEuoQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F18CC83F1B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175247159357.10115.6003177084967158173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31f227a87557246f72112d3a2fd84067536f6c08d53293ed9e9e393bc8078d54
Date: Mon, 14 Jul 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752471593
