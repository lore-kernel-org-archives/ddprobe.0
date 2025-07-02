Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162D5223337
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751438394; cv=none; b=DBkUAaQqbBMdGPO0FZIEuYjmcQEpAmMYIRh3Hf9gHSGpgscmbs9AarDOokfVNq1CquYsJkM9wleY6u6H6fv8/nLVJfv8fHAf7HOJHEThDRt2kxYBp0qZDbnga/ojm01k2Z4A3Jc+JNsPV0GWBH+kq4NHpTmI1xQiqPlaGxIgj2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751438394; c=relaxed/simple;
	bh=zVPrrvKjxl9qSSNn93cjxNLeIY9GNwPgpQUD17bTWkY=;
	h=To:Subject:From:Message-Id:Date; b=Zw6csrQOYhK2GR1bvB/r9wNsrc3d2LN8t32AN1Nmr/gMYo6QlWEGcoEqgjRJ1nvRwYMo1aDXvxjFRUcTtQWGqqjsUjTmt+W3rdWPBpp6BhGsL4Reuaxy/clI8LRHTKfThnywcgOyPM3zkhHf+nhexTAC2KQFQ87AFCVTjmkAlo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mmyBcfzk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mmyBcfzk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C143C4CEEE
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751438393;
	bh=zVPrrvKjxl9qSSNn93cjxNLeIY9GNwPgpQUD17bTWkY=;
	h=To:Subject:From:Date:From;
	b=mmyBcfzkOpIHVjJjHY4Y8WwYv5YDBpOCRK/rHYDxygDS8bscRdfdd+1YWUkII+hbD
	 Oi3TgcVgMu98e7xEuMGC/gR5CaGhvU85CBtOhyz2OpqvYExoJpQ/mWiimoLgv8tBJf
	 Eupi5ZVLnzzVXM2lHRMPBywjX23ruV76aXWl2cve/kf/GEMTxeY5OvbhhOS48QBGLE
	 XGMn1rPzRsuUg6QyBcguokQkL57R6dVnx5EleVFM6MOPDFwc2Lk18gD866mJVta/en
	 QhbsAnJfDqlFzUo/Ydw43IxB5Z6FQd9oYpfWMejloVgPp7aVXoAvoRklmUXSI7v5PE
	 QOQybVfFIeGjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8E1C83013
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175143839358.13565.1659367195573566696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d88dfb9a56391b6c4bd93f48b1d7cf05714d5be605d32dc8dbe4f6f0386a9b53
Date: Wed, 02 Jul 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751438393
