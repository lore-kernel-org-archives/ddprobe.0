Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DC119067C
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759754394; cv=none; b=J+zDPk9i28lZDZe2AJKP4IlV3RHxiVq63kq5Ldnc+GneCn0Cp94MpNEoyQk37qvEUXkUZyPjLxTLiQ+enbZbhKYlzEnJoeWi5lS7pp62YETAMxejvv6EfaW8ouZLSsnHIXqU0YOW2hrxTHag50Gkcs2hmcKY1QZW6SMyBiP0Ui4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759754394; c=relaxed/simple;
	bh=odK7vYi7M++gvZVzg04qEiZkrAthrBrMMoqSzDnzrEo=;
	h=To:Subject:From:Message-Id:Date; b=rZSDUNtZH1vRfFTuycPo8JVckubd/ZmzL+ISt4Vs6ViVcCWEkuDyd3v74tBA+KJadqlRyrOtjRRvQo9+FyJhp/UsbeokINwWng3CAW9CfB5GzTPXywaiLesz5FKKq14/89X6OzEGrPLq3QPcmpxK+ME4Zv7DpJgBGGIbziWqr+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S0F1sSof; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S0F1sSof"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8EEC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759754393;
	bh=odK7vYi7M++gvZVzg04qEiZkrAthrBrMMoqSzDnzrEo=;
	h=To:Subject:From:Date:From;
	b=S0F1sSof6As5X0BXR5IroS0JWEzqada80kfnGp86dNBmEefsE4Ey2BtBVr1gXurTF
	 I6VRqRonVnCYq5YukIi1LEI6rsJ8X+U20fgefk7yPtq4JdT0Pt6akAaogjcW9w+eT5
	 9n8N6k3R/FuUEIoYvu7KzT8083aUCyHbXgkzCc6fWPYIlmvFJeVLtxeBwAsPdaL2Eb
	 MdFNDcYB2IboitQED8tQ/yfWddP3MTje+1yUWS5Y77tpmTA7ObtEGxbvHI+RxPv14+
	 GRFDjDGjpuA4sAoSYWKNUU2Kya6XXrHAJHHfHBDXQ+1eZAN7hbDr/NdMBmfjcP2myZ
	 /PhBY2CWaLfXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F13CAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175975439358.974.12283633987018356805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64dfc4ed0bbf10f59a9dde53443b1f56546955f16c38b328d7bcb881efc19478
Date: Mon, 06 Oct 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759754393
