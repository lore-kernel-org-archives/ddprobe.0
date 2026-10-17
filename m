Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 662984503B
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792209034; cv=none; b=ckRnIFcs/6Kvb3OOX1unWT3SrVfgz6BTwLfAYw80p0lXOfGyehj6dyOt6WZ04ozh6X7MDTzqLa/3RkvIbK6vh0gThWtA/vdw9vByIuI37mFl7AU2w/9DXU/0/Fc700p099bcblK+QLB4s3KAJvrNqr4XrIEkTq7T3wxsqWROkE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792209034; c=relaxed/simple;
	bh=bH152t9oR6r0qYNtPgjfz15KFyQduFKW3ZGPVmLKgIs=;
	h=To:Subject:From:Message-Id:Date; b=qtmwGW6R/sLrrUvGNas+yubeuAFSKZ8QmMPhXNkNX4TdKZBMm+yVK6/rr0G9cpQaBJfW/j+CkS4JhCc2Ne0Je5rYyvQVOrO68oXZEEaKpRn6Mk2hqJ14OV6rrooTQFOHundZ8ZS0NUfDYmII+yafMu4NtsbBKZg/EpstO/ZUkq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gSdrVqg2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gSdrVqg2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4EB0C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792209033;
	bh=bH152t9oR6r0qYNtPgjfz15KFyQduFKW3ZGPVmLKgIs=;
	h=To:Subject:From:Date:From;
	b=gSdrVqg2/MAKNHruNNLh5hiXRszTFk2UaxlQ7+f+9hOMaCEZvNphneCxBdRNPsiQ7
	 fZZ2sa90aQSqtADhiUizqAM4zGLdRu9TWuFFeCMAFfdEopd7b7LFaT7/KNnoYKSdMt
	 mU2wbwEOHyJJJGWpqb2uIRD/+pCbcDIFt5bZJ2I2zfy/2zE225sAhAqVreKjEPChSS
	 xH85nd4xUrhajepmDkvQj2ECpWq9y7OKEp+eXIZaXPZWro/yyt4SrwZFkZe6Kzzf5i
	 91ZRPyM+dCx8r0Q9zaK/KsNQP1OvvXcSTMRYpuS/mTgvic/SUZwmE7ooiwz3ml38tY
	 j7itSjAY77waw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA59ACC6B2A
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179220903368.17481.14051629948429943059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 524ce427dd20037c9bfdbdb7fa9ae000f87f26088432daa48f44f485631d54db
Date: Sat, 17 Oct 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792209033
