Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134C36F2F2
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751415594; cv=none; b=M8euR5oxiTvZ6HMSN3f5k9Ath1gKjBL1ddfMO4SvzWiDfE/U109guCGhlFRCivs1Yh0nPYiLuaMOZv8EyMwSUaTGfeMygZ5B4cVXUWgY5ORhfyNIEyx9GCvjri68GwPDiw6dkw9Gnj5G4tKHTZ/l1UhDT/ETayLzFlQfVQ/mRK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751415594; c=relaxed/simple;
	bh=Fltp8PECRNqJRRwIYFyhWuTypZmo4wvllXjDP0AHJA0=;
	h=To:Subject:From:Message-Id:Date; b=c4L0yxHTiTYNffhvHtXYaSVcSuKHMAILZSlIkYYg7bMOzdgx2rw1Dp16d4doY0kkZCLyyui4D602/z82RWybnscM9XOHNGX8G+brxG/53jiZwiXhM4hELO7bTRH6NUTlyTdY6pNXvGS8TPF+ZGAgxlRXdTmiWYeXBR1RtQKFqJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHANgx/l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHANgx/l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7253C4CEEB
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751415593;
	bh=Fltp8PECRNqJRRwIYFyhWuTypZmo4wvllXjDP0AHJA0=;
	h=To:Subject:From:Date:From;
	b=VHANgx/ldyouYxq2gBboZC0N9lxGJ9ufjBFL1jqY1wyqilMPJ8ejuwmrwjByqiCmT
	 yqr++dC8P74094tGy2bWFQaF926DJyoaBSeugnNEBRT+aIhijoRuer78UvhSq6VILq
	 /z/7mQ6fsX6qX+hdT72EIjRyBFjDhHdcXyGOH9PvloQ0TuiDonlkR5ZpZWoKcHYTE8
	 kR88Y9qei7plip807/opozY2a7q17IxWK+RDxkQTTjT+rly/5o/p/D5W/uzy3RCp1I
	 sB3D82fKSmlBoEBdqdIQHlCJnIip7ik75Fb4aPXCeq3IlDwC4T2yfhfXhrmug95q1a
	 /OeyEmlz6G6qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987F7C7EE30
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175141559361.13029.11843094444124598951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46b2e7bde9580430274f9b88897120c008511a893767b78c9c804ac14defb97c
Date: Wed, 02 Jul 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751415593
