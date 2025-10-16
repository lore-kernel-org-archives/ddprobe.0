Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345D2233D9C
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760643594; cv=none; b=Uh9Zxkek1NK5liQWPtKsrgZhOzsNZzL1aTCdx1ABIQxff7m4/2Y3vB4079vzqJSLmZZK7x0ikaqXnfmC1aoei4H1XX2xbyqobj7z6hLtC1xffoyFXfKM76bgNEZzo56T7tJd5uWyDsFH8LN1MLaK6mXAteggmzsDYhc6HntIcwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760643594; c=relaxed/simple;
	bh=xdZ17tvpMx8mMmt6RQQXVd6YGaCgnuRBNTUkIvgB79E=;
	h=To:Subject:From:Message-Id:Date; b=OAegPG0QRvkTU/1/nv6WuJEa3CqylZ/9URKX286CbMdK5hPIt/qR26rWvNomUUNFvjH/o1cm6zUW9BOhfrZTI4OskccFpmUTZuAges5If5H357TVslnakwRe1uHFwnCPD1mEsZ9W0E/CqByVTuCg2MCyoTPIWAjNwgBMqpw+0Y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iOjQ6t+l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iOjQ6t+l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F96C4CEF9
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760643593;
	bh=xdZ17tvpMx8mMmt6RQQXVd6YGaCgnuRBNTUkIvgB79E=;
	h=To:Subject:From:Date:From;
	b=iOjQ6t+lRrtTn5DSLZ+Se/65xMmsJM+3xlDiQ2xRzgF0454tODXnlHLXnfVOsMewi
	 G4155fCf70f7FO/S54EqdOUHs5woR12rsTCVVuQcutMQXVVMBQbAldhMD+hFE+L2BJ
	 kUp2/R06HN+FnWstvW4RZBtdjJ2lclCtYHS1reZmL/LB7Fhqylu4CTiS1h+G+bCmoX
	 3Zl3ymDgv0b8wT9K9rPjcCs7ZL4FoHjxfuv+vDauQ0Px+YyXaN6YLpqNRyshDW6LTt
	 WosDBNp8ELNJUMJzwqy0sGNr8Tpp2T3udb9RD10Zip+ooQfpmaA4yzrTInewWxy7rs
	 KbeRRBo8rwZ6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFDFCCD199
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176064359358.28491.7310650403952010510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f3bfec693d5b8a8940d572c43178d28bae934d0d02fe3cc6be53ed812d4fa6a
Date: Thu, 16 Oct 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760643593
