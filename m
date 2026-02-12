Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4D13FBA7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770870894; cv=none; b=jz/T9Cwq8JXMffQsut9PBsB0L+pNR8e7JjSwDj038oRg/egax1K81G81lPKXZm/z6mh4Ea56cxQAtzsICGdGMAgIr3nZvsUrZAnKLP2o7PK/XtRyVSamqHIX//Ew1cG7WcLN0n3Xg0wZDWzBYLtgUXYaUek7wzlyp35vcWSdviI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770870894; c=relaxed/simple;
	bh=+gpYvYeEKV7dmXxThglDj52tSxNPJ4+9Dh3dAuK60BQ=;
	h=To:Subject:From:Message-Id:Date; b=LX60iUgwuk1tETd0GQ0WlwVBPdaGlArRN6x9/Ip7Heyjo5u4Pl5P8P8AD2VI5mUEhulSCas80IVAryhuX4tQsIYR1UF0vcMeonaFKUlaPSjQGX9GFMQHEUAExuH3sg/v9wA7PJZUD1fY2NiaaWWkfH7+4tUOPbolYB1kKVhsF9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uQDj5iqz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uQDj5iqz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3562C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770870893;
	bh=+gpYvYeEKV7dmXxThglDj52tSxNPJ4+9Dh3dAuK60BQ=;
	h=To:Subject:From:Date:From;
	b=uQDj5iqzZdOp64L5iTaOUblY49/i83csuCIcgmJ33NtVeadS0f58YuSVNGBFiObPe
	 F70D7N1tuxBOZnKlZC8axlVKNbkSSoiw+LA1DorZsloGeriXw3dT32NGwT3+o3i7xY
	 CJUKXCZAttIH6U/co/Fnwwwi97wb0oQG5GaP0FFirrjCh7AD7n1xwq4VT7edc1nYjr
	 PJn+UhMbdvuTr6h1W8chgG5HGv7sQraR3JAyaqsFiwGhGfedeVrnG1gGaoEqX7S1uB
	 2dCG4KCoXZhUaZfDn+XVtn+Z5SEtVMx0Z9RGc5LSK5eAek1I0XIBureZIAt6AFKtnD
	 p45+SNn9fknew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BAE5EDF030
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177087089362.26463.5180862811425942533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aa906075965d24f5d5806bdc768d3de84e3631d2e419612d145ed845b28cba9
Date: Thu, 12 Feb 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770870893
