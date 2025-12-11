Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E041260588
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 01:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765416174; cv=none; b=b2M0R9XSTfKjPtvtAHM2Kil77fG/9noDchfF4QvLfXjjQ/qRN1xML8oAW+/+6m7wSihiXtfyGya9t3G0gIxcThrpxidb8AsePAmcBhk9A4nqDt7G128DLhQFhM+Ow0pAXtsQhozYByGE72LmO/79CrLK3Tg/KIbnBrTyK2hCnU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765416174; c=relaxed/simple;
	bh=tLoIOSoZJB28CkTBEfwuUPCPu4ra/oltL+We48vFIaI=;
	h=To:Subject:From:Message-Id:Date; b=Onn5E8NbgB2RmGoFsfQmFE5NeH7YdFE8nzqxKZm2R+guUnY5alIVJry7hh//zisLsqXqubUuM/LwaLjR1iR6a7nsKR/QkgDZWhRIALy60uj0KjbYePcyoR0vjP6xPrJp1gKkee8vkaSj4iXMaaiAwWuex0jjqxR/wEGPDRGSSyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ry8kDhg7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ry8kDhg7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18EEC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 01:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765416173;
	bh=tLoIOSoZJB28CkTBEfwuUPCPu4ra/oltL+We48vFIaI=;
	h=To:Subject:From:Date:From;
	b=Ry8kDhg7JC82HinqlwQAq1RbGHyVbJ6SaNDlkokbKhHFa6ig/6VAxG3+/iVYeNoVh
	 cR88T1/55i3ygo8FGLHFTlS3PaMQh+AtnnHx9gCU8tKXnWRMWucHQdgAa48keu6nSj
	 SoW4Jh0nxEwo6M2Ap37viM4B8HA0Gu3/Qa+HBTlCranYd+cnM4T0+9lf9WD8Qo3qYE
	 OfK+rxOaCXRHdnJlOAm7K+lcO2JEOdgZDLCfQCErLF8OARPO4T+zbJgvy84SO1bPC9
	 sNG1H2SuXuewPa6Smh9Mmob5A/YGX8OX7hW6EeR8mI9mTnEHAhHKDKFSOXpqGgZDS+
	 ULElfjN2uQXnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910B3D3E783
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 01:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176541617358.25937.16522619914631754945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93c2d5f843d3d9f4a6d0158166d09668d794bd7bbf456b37c7159760626f779a
Date: Thu, 11 Dec 2025 01:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765416173
