Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F146C14F102
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 20:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711570097; cv=none; b=T8j0Rkv/obM1CIzcc6XTmSOuJyCq/bIgC7MDMgcKkIpMfj0a2sp3cM59YhcV/plHZdnpZwKdR38sEFEsPnVmALSww9dZJGtxN9Rf6K3WYdgvAMIrs6uNpOdyNkaIJP4V1oeZdAGt4QOHBmUT7E71+6XxeSss27d+gD44qoeFtNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711570097; c=relaxed/simple;
	bh=JciZ6hPfZacbCGVDGhIoRrL8ZAGa/NxzbJvxthQImhY=;
	h=To:Subject:From:Message-Id:Date; b=V0FcLx3V8vkqBJBcmM8M8iribOoRx5Djlj5m8LE4vuxcm57KJFuqFXoww/an6UJGQpXgXzrBCZLllR6j35XtICeXedcWksn3x/kc0PPmeVfjvQ49UdlxbXrPcfsxprJ17bdh7qub3UO+13cg2V3JWo1lfADZwqPXLV6dTI5CCC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CgpRTEIL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CgpRTEIL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76F77C433F1
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 20:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711570096;
	bh=JciZ6hPfZacbCGVDGhIoRrL8ZAGa/NxzbJvxthQImhY=;
	h=To:Subject:From:Date:From;
	b=CgpRTEILZD0aAtbmV3MmKys0smKjpHuzkx5BTqQCzuzaNmaCBYNJV2CtBZ1UR6CxC
	 CTLAyyazXXR/dBotV5nMMS15mcxz5VxmjFql/UTDvsB7GpCDJuam2jmwfqvhBkiR0q
	 UpszMpm2b9SspJKVzZsfr8xBQbC+cBwe9kJOTeEfcZieBrHFY+/dZoXE5Y9yaOvJdy
	 CmN7oaAwnyMbszX6yFzx+XxmU5W9mpustmNLcIFANQW3FAFXDcCurgafS97yxvVMy0
	 danFKaT8lBxUxo+Vlse8b0l3inKMpaFbJS7idKRfLzzeqkwF446fokrXaCQvYRrBCr
	 sqGFok2XQDRrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 683FBC54E67
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 20:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171157009641.27549.9243648869616640266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e9965b84d33ee4da1c9ed3e02ab805a7dc51d4d4d3afab8d7fc8e97abf0c756
Date: Wed, 27 Mar 2024 20:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711570096
