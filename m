Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1E6D3A8C5
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710088697; cv=none; b=qQdv04MdsXxASfwXSunUKV0ujeck2ZWe7KWtG11jf4z4VGfVOKmwRgXT55JLbh9TuZWG0T6x9XCIXtSVX8/uHbWEe23P0pKs6+dN2tyrRPb2fdn3+REn1lBp+NbpOz0YbKkT+tP5vw0MrBMpxL/dgqdXDnesBPzmgsJkUHDJ+d8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710088697; c=relaxed/simple;
	bh=PKUWpHNiw6mkyXH+dxouBwNT3LTIVhWXWt9pdRKu16E=;
	h=To:Subject:From:Message-Id:Date; b=BzZS/NmVCOWLP50KHDhfltusIKBneYJ36lEeaG4wTZlY7cghOlFHnlV8WMC4/MgVqM5Quj2wqTFSkWBtwT5VQxtWK77cz1sd1RTqZ6uxs+iFfBR5Fu9XKxYMwbQJtK0mRH+PSBj7YMNFJAifM2oBJGWVFNVhZazsSl4Z8Ken0gI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c1uDXCSN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c1uDXCSN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E036C433C7
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710088696;
	bh=PKUWpHNiw6mkyXH+dxouBwNT3LTIVhWXWt9pdRKu16E=;
	h=To:Subject:From:Date:From;
	b=c1uDXCSNdnj457HUfVZ6+vereOCmISFcxj9IJ9DPGiXV7skXEnJT0vqtBb8iqv0V9
	 Xnc43L4/cB6lkw6np5kU2Q/xhN1pfuE2K4gzCinOQ3frCA6Ag8/eXo0pMHkyOpEH56
	 W2pWhTn9QNHU4vwqDQsJbiPx0eP82mKVERbPRtdIsISvMpYTE+AK29ZmFy2qtgjpYP
	 /VQnegu8LrC5KhTNVGcYe6NVL4GcDiy4Low/0/BCebm0S3Jp9BgO84+9/VuiSnwvlS
	 TD92HFLeWu7OBUkhTUCIJND2lOi0G9iz24z0H5uPj6R4fJkVvQ0MvuYg4FB5sHaut6
	 IxVzUYML1WXKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67EA6C54791
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171008869638.11486.1449980192881104154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baedfbe1beb043aed762e07e4356d4d109871b52af4350ef209a32252dd1c7dd
Date: Sun, 10 Mar 2024 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710088696
