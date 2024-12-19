Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12977320F
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734568554; cv=none; b=ROVQ3kXzLr5yV9BiaZHGOfumUjoS2MAGkq77tkGKoHZtwK1zWCn93pHG6/sEyMnCcLiZEljTNNzEkxvU73XbbVfRRdmsapLANSBzX1w3rWrtcYmcG02u0/HaedNQnT0w4+zJPstVZhqBemJVd3A+1zCp+ilBDYyAfBnfyB4ZUYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734568554; c=relaxed/simple;
	bh=1pH7qoIvxPicXRMaj0qNcOTFhM3taFVJGlaXU4W8Qys=;
	h=To:Subject:From:Message-Id:Date; b=rx6I2OQadPu9g+87DFTblqAhiNoLa/scr5Ig9s1hywb3oasWaLwIqcMsa+DssL79qK7x4EFh+ZNNlqQzD5YzW56aHX0KeZQirqKPI8pTp7Xs/WCLmRxQF7ht3Ii2+MWQWkp6B+VLDmtcxmgcDVGbWF+6WnRTeAit1am6q7fVyzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pk2j+2KQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pk2j+2KQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFCFDC4CED4
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734568553;
	bh=1pH7qoIvxPicXRMaj0qNcOTFhM3taFVJGlaXU4W8Qys=;
	h=To:Subject:From:Date:From;
	b=pk2j+2KQdlIZvLhZqKCCEgs8slgBxJfZ3Ott9pGRSPfEz2z6aMjRyVBQ8dd+mvEje
	 MfWFRmtBlRkHy8gtzubXlWF8sooRS0IQgdFfX904vmP/pMP8vXvN7lOfK1QJjey/b/
	 1qrC9NCb21v2NGRITPnNpFb0UUOso6unEvkRw6iBGgH74FRkfQtxCSM+uU00uwQuae
	 EIdRv37VZzMFXmwHuRkVdUR/WV+XK6ezfNWcAkMmW5VfUqxu3X9GQV29eLgQymeFe/
	 6h80v3MgOMv7vIFKy+Zlg5kOUV8odgAo3NZ7BHi89RvBM712HHtp2Ra5QPT2WcMCM7
	 XQ0KkdPeQOKZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA7BE77188
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173456855363.30460.7585392257898410900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3cbfcf82595fdf9480aef85b6496c07470f2f9301291f9176b5c96c63f617f9
Date: Thu, 19 Dec 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734568553
