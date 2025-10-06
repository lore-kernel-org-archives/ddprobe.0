Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B5428315A
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759754994; cv=none; b=Jc4vgIRMqlMDOeWY1An89pm0dnrRtQqjQlbVR3FWJ2Zy/qiNIMdsAfdFSCjQ+AS0Jw5Pv6MX0sKj8AU3u3Rroh16pVl6vkVQagKfWzRO7iTt84ShCikETYGQbkzCrjJF5X5h5CK4SCv7SlxARe2+4+HfEDAsRIiqkeYZjOxcrGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759754994; c=relaxed/simple;
	bh=nEEN5UEa5rCUPmQYFKoWoZFl0+8swooxbEEEiR5Q77U=;
	h=To:Subject:From:Message-Id:Date; b=dHtqa5Lw/xQ//zzTfYi2VPFf7tJyefQEwfJoiJn0XXeMiYV5tI0qIQGzztOIAv5/Q51xE8QwOzrdC5N4LeSK0GH3AvzJ19dZC+6tMbGvLz1ptb/AyLVlPiC4ofqFc91ZOH16/o48gE6uC6gO+pFWrpt9izFnQ4v4J/clRqvCqJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NoZ3NvQv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NoZ3NvQv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6F0C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759754993;
	bh=nEEN5UEa5rCUPmQYFKoWoZFl0+8swooxbEEEiR5Q77U=;
	h=To:Subject:From:Date:From;
	b=NoZ3NvQvYhCPr2aiwDlc75jbbZTaJEmD7q3KiwBSD/NJHQ/f5VCtZylSV3+ZYY0Pa
	 TlMRjEcr7JmID4sYu+r6OCqcZc6U8zTKT57sBeAyVxtvnYV+JzKtXfmtvPYV95Oxig
	 lKyVQsJzWX2sByNNWo4rnVmoGQIFWDg8nH4xeHk4dKroD+FnDzuv48CCAfWbudLWhW
	 2EwppDCkshvsgDQhTEyRemI9m485ECueNF0ACNxeTEVVCUNQsD9yURyn4HQqDoGZEZ
	 PyZI5yswljlGLN2fG8d92FJ1BtGODabIyRcFLkPSdSwzRozqOB8SLuHlp26OkL/bLj
	 i5x65R9qFVuUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8E5CCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175975499357.744.3392737209710271281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b892946fa95d19f03f2850828c009b1ae7a8f3b1b4ebdfacedd1252cdf3f26d
Date: Mon, 06 Oct 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759754993
