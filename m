Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C63E198A29
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742066394; cv=none; b=CiybpRSJ1Q5NgbJrYX9WzxlucIUiy44htfTRcmYkCZy/aEibzgYBEtOds32MHfRxTdMi5xiMGq4O22qv+4dkjOsOchMXWa/hR8rxvSLUL83e+RObd7qBOcOEjKGgQ3QDvobGudCb8eG+lRi1IfEzJf/DlcbRCdsKj1e8t2C4gCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742066394; c=relaxed/simple;
	bh=rDjUH7xNQPJEh0xWgQXCcTwZWJuqNbS1MTL57JzrjbY=;
	h=To:Subject:From:Message-Id:Date; b=Fur9W4xPqBsy/8jzN2VgwBXz2DHjO2Zd/P+i5RdS5MW/dE5bbXB8zNye8ab+pKHdlu/eRnn9s7QfzlWUAB4tHNPXlmagEUK4IaBhgGRhlNwvlGqpq+Es3SzS9woElWVP9BfycPwNS1+3Nykoskm8pZTU+49ohgCamda5Ewcmbao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKNz8njN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKNz8njN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFDCC4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742066393;
	bh=rDjUH7xNQPJEh0xWgQXCcTwZWJuqNbS1MTL57JzrjbY=;
	h=To:Subject:From:Date:From;
	b=MKNz8njNRorJwRe1DjCwdZBEsOICbGWsc16O9QM3aPOK1HvDHM2NiyXYMBtwMDXIr
	 54bxXNcisJWhMfoigS/EIjauWIgPKFJJXcwSQ6LvKs801CmnU0i6zJeqojDC7PLq5E
	 jCzxYe3Y+uXYHHbr8NfSpLofkORFBVGxVaVvlnm1T0nlkUi5hAS51r2BojYzDLnHoE
	 +C8uJbNqPWbmQR4G4DZ55LgvSir5HwiUfc/dZcqZSB2WeHmByP5PtGpDKoxeAb8cpL
	 ESmIemfXYRJwESn6AAWOKk+3QT36AKhV3aUsEZFKOacuO5G3hYaf9SNBNcVzHUpiX/
	 T65IyWzvLzrPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9443BC28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174206639358.6007.2963969033971843739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04598411ad2c4aade39a4062d2e26d7c44fa8ec884ea0e0ba237dec9d2b33b27
Date: Sat, 15 Mar 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742066393
