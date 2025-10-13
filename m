Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519E83019B9
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 10:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760352595; cv=none; b=AZXFO5TbBf3KlSxjIIMYxETavdccx5UJqKRrLqjCW7MNqasdRaNX+55uDPOaFFnrNLA2a26Yxl1JlC4RXG6+CoDpQliNT50/SPsajEHqKCgtk/lNGTPs7HqWLAKIxJdOFpQ56NbxVuoDGKXd5/+gPcrpgyvbqPVo+LBWHoHUuII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760352595; c=relaxed/simple;
	bh=Zj52mNnnhj3JRDZai5kh7CiNxFQtAfBB+xlrzuWOYzY=;
	h=To:Subject:From:Message-Id:Date; b=RhDDkYVs8jw0oy0IrkXuF7d7pF77QnrIbn3DaA9ToX2/2+gR+Oa1tfqPmflFYd3pha/k7YeyGAAEL1YNG2uV1ie2b4KkWYjnUQIpPnsMirKNGkVLJgjh/z4U7we2a8D8OxZkm6FF+O+jDJhmOsoEwdddo7DGnNt7zInfcVuLHK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I3ZgQ+kj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I3ZgQ+kj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DD9C4CEF8
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760352593;
	bh=Zj52mNnnhj3JRDZai5kh7CiNxFQtAfBB+xlrzuWOYzY=;
	h=To:Subject:From:Date:From;
	b=I3ZgQ+kj1zO9i0WgNayBODElxiKMziUtFPmShWtntwWIM/oCT1ij8QgRpH0AxqnvD
	 oKdG5JEp0BR+ckpB56zwpmpi04lEuT7anGa1naLexTBQwlk/7Rivw4TbDESJe+0+7k
	 NbmF9hym+Am5OwrRIH5xfss8AKh1wSb/D/lhoFklmEithEg52EMS3F9D4ekD+HU9Vu
	 T6sJKSfsSe+KOqRpO4rSY648QrnueuF6EtzFb0ZBa2pvyWVC37b2xnNv4Ynnv7iO+j
	 RrGCuFnV4S6koQRdpRRiNFAFgXRENe8JVeOiu9m3vpF29yNUQNFBIUYDS2ChQF48nm
	 QR2DDeMCEPJOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6BBCCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176035259357.15076.7000094721986217856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 756269d3634e52d39c9edf6afaced0a2bb0cbcde6015b774871b84e692d93fe0
Date: Mon, 13 Oct 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760352593
