Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3640B13BC0D
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725605156; cv=none; b=KAwnoHKKK0/2EPbphg9qvGJp82WTFSUqtgjCfOH589pwpl+YvlkTUcHfNRUF3fZ7rG+DKRYfRIRKu3CFNco9Tl5hK0ZUudd74cgEMP09JNMhSAkPRBdV7UT5zx4kh2Zk//GMjyW3sS35jB3kdbUxm/uYV2c7unZLfWYgIQM47Nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725605156; c=relaxed/simple;
	bh=8fctQo6QXU0zv0UkbV1yfXsJSgr2NcfK0Czt0AzEJuY=;
	h=To:Subject:From:Message-Id:Date; b=UtCAwwFTWXOzqMOhKPhlFYxs0b4zBbXTxRaFvnZ/S3GKr1MWgKGX+AsS/dZL36rgBEQKIZrt2alp95sIyBZjgJkG341teflkLffAnhKdLKcUVoBhFNqTUrqPyfajZhO/Q34vtm/DnHl9iAEL2TPkKCsBczlE3fRKlNoFKHmgEVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kmah2MiS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kmah2MiS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B75E0C4CEC4
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725605153;
	bh=8fctQo6QXU0zv0UkbV1yfXsJSgr2NcfK0Czt0AzEJuY=;
	h=To:Subject:From:Date:From;
	b=kmah2MiS2Knd//EL2t3MTAbX+FSVZAKbcZbnRLoY6J3051vEzflojdDxBflXC4nyp
	 n4hT7iHwxaegs5gPJr/XteiKnwhtEfseD7Q7TrZNl1oLbohNCjUWqnADulx1PUQ3yp
	 dE4qDDf9XqkeLDwJpoRj8kG2j/YzyZKHVFaVsr1V+SfnbsadN2y2erz/WM518Qy/6a
	 dxirXZq0DVW534f2G8E2jkpAA4HTsisZjZx7srDff8xvNBABHlq6yNqemTS+EnOD5M
	 H9OFMI8VFFyp5gm6Bn5jY/qd2gCvbKzS6SNTFGKTIfmGyiNyhM6ViJvNlspGbbaKor
	 pnNK+kwj4qLgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A61ECE7AB8
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172560515362.18982.7120278782671105058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb98bdd8f5d8c833a265ea344ae564fe3e2e7c8d72b9bf4797f6beca660e8fa0
Date: Fri, 06 Sep 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725605153
