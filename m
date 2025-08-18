Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8FB32C307
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755536994; cv=none; b=Ot/m5h4n9rcPVSsDxP9tg4huLR1sIUPgFUBnNL1Wj5RYRWi/qpvvMfGrUjAx7rHGUU1mURltI3fQV7Crm6WRkecMoyqxeb4nMQNQ/+xGyO+Hj67TYz48z8/rfQnfGuncL4PHSw5Qxxl9TWix1bQwLZaug7VomTu/dfjp9tEgk7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755536994; c=relaxed/simple;
	bh=XeI5S1eTjpTksLlsUOyDqYWF31/c99VialwJw/hEKuk=;
	h=To:Subject:From:Message-Id:Date; b=eiquxt88g9kr35w+FAfHF5+4hN+rfpG1nTVy1bmzh03PCIoSibW/ms2AX3f1FIUI5lW+MSZHDXfAkuFxTNb4wMgnbTvzrgO7Arh8uyPLbjyGHlFiXyreC5kNZmA3hjx2gPrwSzpI1D5AYBgBE0b6+afXtChiDlzn2sh8zpG/Qio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YDhhSWW0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YDhhSWW0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA263C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755536993;
	bh=XeI5S1eTjpTksLlsUOyDqYWF31/c99VialwJw/hEKuk=;
	h=To:Subject:From:Date:From;
	b=YDhhSWW08UwGI+sPkYFgQ5zgRu+SoM20ezzcTtaqCR4uXRcX9IJN2CJOtPtJAo8eF
	 jPWXw5Aph8sMbggEWJShUyFKay3kbUdDz4ULg/Hz5FPGYIolgFaa+/EdUXTvUgWVl5
	 64MI/KK1nzV/T7sKkABMbgMvwpUUVc30Yc276lZLLNsPBDueNnehgbHWP4JMe8hkHy
	 U1sBAfT0jTYG4CO4YP/qgndOcbpOm2G+LjK8VPg9pTdIbGTN5V+vCnCCWHnCERdgTM
	 MY35jzo+EWkxUlGgH7bMrfhJTcKtKYBF7QnRiaR317KBEiX50vJ2eSLNh/ceR5qv+D
	 QEfbMYZu5EY1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955D9CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175553699358.24966.13830681435398119976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb4d2e8e0d3be679d7c0fd3f4c8a4b571754cb14aad6f5aa788a161d8d3c9c20
Date: Mon, 18 Aug 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755536993
