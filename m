Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C440A2F5303
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756813793; cv=none; b=gz3z+imGuFDcoAbjMB06ZkFP2fk5YHueuF+qKwQdRRpa464SMh8Lg1VXeb1+zgQzhqaZLd/pWNztvAyxqUISFec97fscR6iVMoUPurtDOGQZBvPsJF2IRfZMwfNV9QuW/bf4lr4x1adqDiNQ7K6UewKR2+u3VFfHHcpBcaAdiY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756813793; c=relaxed/simple;
	bh=pL/LzfpCltchZRfbZzy7Uhj9BotILjXCfOmzXUW0GRE=;
	h=To:Subject:From:Message-Id:Date; b=udmLVOOwClv81ROemS1a3dgWxLal9JHw3lZi8RXNRpdPrMOtnyv/2qxnvA7FQGrRGAvQ3dgDb2xbJqltCn2iWaFadhL/inPLDAsgCcW+QJ/Xqfp59G0OCQlSAnZVtCuGa29onhGT00MuzYvNEWjfKDlBpJ9+YsIXQRKG5cYckWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YtLGMaI/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YtLGMaI/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C012C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756813793;
	bh=pL/LzfpCltchZRfbZzy7Uhj9BotILjXCfOmzXUW0GRE=;
	h=To:Subject:From:Date:From;
	b=YtLGMaI/nocbXtVeoY+A+pPGSzE7SGE7HJtzbXGe9oy78Ds7K+orAb6yyalDReHW+
	 OBJyn2yJZZZ3HOsaVvI4DcVF79UiQrmUP/zxpHX2fB+wKmmhy9iDGbWxI+EiJdWx2J
	 QDVihlcSvd2OYAPUkXnpmbppQHzA2JfmlxTILqfZehkPYYiuV9PfW2SisHQyn1f3aE
	 u7W3HUxEeSrb9QhWPZdmETnjhlakSEU8s+GKva3cvIq0ELkgy4GwGRpNqO/OurDUpN
	 IvhWORZv8cGkdVuALOzXWKJiXQuUrN8jqchIIMquFvYyX6UcHbvJnY9N5cj/ga6mh8
	 9pL0AOFWNn1eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F51BCA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175681379357.24373.12570009449915370849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fd607caea903cbf1e74a81423c0d4aa136b202b3347af58c5187eec8ee16ad8
Date: Tue, 02 Sep 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756813793
