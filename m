Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54BEE1494DB
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743533394; cv=none; b=LGwDOAfCiauQB0YQfu8X/XiBULnIxbENDHCcZViMyqKKdOSo2jWw3LbifDyDSndVu/p/RUwRvocrMdeie3LCsY4s3D/7fEUyA2xkA2rXgDy51YkuwmaLI34hsFXkLsqMQTTU2Bj8T92mUQSgpqiqMpO7+4EbEZ08J1x1To6nTqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743533394; c=relaxed/simple;
	bh=YT6rzvPh+GDHlLVnkHzN4AvRGi4ympigQlYoSumlUj4=;
	h=To:Subject:From:Message-Id:Date; b=Gf7/RjLycKcgC8fTnE8EmNycuivDXVM8RH4IJvfmRffxKXbxOFIMQJt3qFQTqCHBjBmmHl4Z/xGzMFJONiqZW7sWNFsOq0sUMZ+773KhIzTht4dUX9OBpUgq3HXgHh6aJLUuijFFfhQMEGPKwL1gTO6U/SeKM1m8mnT0+ll2/C8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=elbCLVoJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elbCLVoJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B601EC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743533393;
	bh=YT6rzvPh+GDHlLVnkHzN4AvRGi4ympigQlYoSumlUj4=;
	h=To:Subject:From:Date:From;
	b=elbCLVoJzi8IYE5E8+8vKfCNliNzlPNjX0xiyyxjI7rJzUaMNW+1QFsUuXHRbf+gO
	 L1Bzhayi0+1JhUOZ7YATXgdRuNScxFjP61WuACqB8VchJOVlj/b3+Pl/Fq7U2QTzna
	 7yeswvkRGh+vV6T37CRJBcOw6pxLlVp+kYVduc5LyklCkGsnlRixJAc+GlIYI9reVI
	 fEH4szRWB9MPofMtA6eOJ6zgUjMuYJnVIn9m0frkzrYl/Lw0+Fo4lMMRiJ0742qt1i
	 PnKjjD3aCR1QSFFChGt9BJQOfo22IZZq7yRc/rakGLBGqL63AgKC8+xkcFRjfggOxH
	 n9mxeCKWLqWLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99AB3C36017
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174353339362.8645.7730643355053046940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a200ee122cf090c7d876debaa94f72d1e00c84de98c4f9f852f72d3fb36bfc8d
Date: Tue, 01 Apr 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743533393
