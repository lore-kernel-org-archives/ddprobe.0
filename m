Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C8331716D
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789354834; cv=none; b=rZXODbY4v8oljL+j7faK2gjCsMlDKh1wbnmyNbH0OSuWHDt/Wj69N6cbb15Vf3j0rkNH+FqEBOAyxto7yhI16xBnKSRnKZiH9Ka0yM56FhHwN5yjo6X6xOwMUz+2oM8nmloxSqoGfz/+zlZ4s0CMmljk1jp166vKmduQDsbTsUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789354834; c=relaxed/simple;
	bh=mbMj2UGBQQc3x7bUhaBAKYcrtJwY04ZoJWcG0dBHPno=;
	h=To:Subject:From:Message-Id:Date; b=OSnxz5QWHSxsPvM2q+v+KnLg6lUK7XPqZe+zZ7qBg4wxhU1EW9+tOeqDZulHNVf9fGLdNxMfYOGrm9yc29TqXjzNx0IvhPUpGac1VnD5naH5Mz5sFqzLrjNcSHHe2cZlMPr8V4U9eGf2F8JA0VbuayficAErHH8dn+aaZ62QZsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vAao3azp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vAao3azp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF42C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789354833;
	bh=mbMj2UGBQQc3x7bUhaBAKYcrtJwY04ZoJWcG0dBHPno=;
	h=To:Subject:From:Date:From;
	b=vAao3azpSKy3knT96FKY8USRdSpiDASlM69zE13n7cRCmM2rsKJgtB5YdekMDwZh+
	 q2MwP0ZND8zR9aBROItj475z9a2U1kekftN/b6KZkwxsaWL9lMbAhBvfT1DbpTsooE
	 v4oALCo1GLO38FnrkpwtuC6d+82SyLaWXlfweIgP5Hz6IIIot30fyTMedJ3mYo+nTe
	 j+U53DwiDci+KdPZwtO2y0lhYc308B0u/Kf1BH6kW3iieOJio1Po4CPqwiZNAIQDWr
	 Tv+LAch20qFBOnBeKUXUBf2yGFROUm5sKzK4BVTqqCWJ02D6yFo5zAWux82ugml76x
	 qMd4W8ZOcjuEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96C8C88E5C
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178935483368.14800.8701119872622980291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8670f2cb8695f8f135874541abec706ff536849efced563682a8d50f4389082
Date: Mon, 14 Sep 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789354833
