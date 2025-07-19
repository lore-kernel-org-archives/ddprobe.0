Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F85B2F4A
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752966594; cv=none; b=nnyzGsm3dDLeDcdrEhxLAK6uRyvrSFfc82pQrgcGa9+BRD0bNKL+NmFfWjRdoVP7Q1AgXZpnqmMFRcd9ZHnhkSkCUHl0FX7DsO/tVG2MRoK1dLDv127mt/7bzUHWNI5HxG4ItALY5ndEDJrY7OdyoSQlyWkgq/MCY+Wi4XjN+UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752966594; c=relaxed/simple;
	bh=Fih5w5sOQvo/bjTUmsUa3rKeIeGCm1I4UUho75DYKpo=;
	h=To:Subject:From:Message-Id:Date; b=C1fyjQjw8RylxZTirLe5OwiDfeGTR3b2vHWjCbAWG+ArJfTpIvM0ueaievbyG76OAXHE9D8EZWk15ys8y52BxXNStnCvGdLTRUkaxxFPqMLqHdCfK/01iHE23UrEi4H5Pmfpt9y4dwwCW0AeTc8HBY7e3A23RoQE84iZWI9PL6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W6CP3O6k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W6CP3O6k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76FFC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752966593;
	bh=Fih5w5sOQvo/bjTUmsUa3rKeIeGCm1I4UUho75DYKpo=;
	h=To:Subject:From:Date:From;
	b=W6CP3O6kNSeUE5Tc+V9SD6Ta1cl4dxLOYd/AhWcTm8iSGQQOmrE3q2o58gmf3yXSY
	 sYKKXvayaFxpfhTNtPx4dma7nSKDiR7STw36K1XeHIZKCMSdFrun0F18G/mxbb+eBE
	 qIZK942wLSp6Qxq11orT+t90zgjtJbZkBlP5FLeuiNWo0zQ+p0hfFlSAeEP/1aAZjh
	 8n88h+Gyr4ctTEW4TmQdltqbAyUXzZ9Qv0IpecQynliLv9SH8d1YGIWoXxvwFQ0+8X
	 WQQk5M859K75rymX2AvG9BgoIV7iA98dwmhldmO6EmX/fWEGu+oLi5+EvitUo8aJ4j
	 gSRKgETel4DAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F0EC83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175296659357.32303.12714007376761164851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e336d972ef7af884b2dcfdd87ecb68dcf76ac1d2d51608956c1234ef35ba1f6
Date: Sat, 19 Jul 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752966593
