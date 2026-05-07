Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE973F9F27
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 13:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778162254; cv=none; b=egH0UGb+MTmEmAcG0/geWeaii9fqZWh+7pbDn2KmnY4OcquQTqLC5vqOeafL6uE0yibMi8RdTXlHQeYzivdy5dNsuc38Uk7QzPQrwPbwpHkulway/in9L+Mw0sasoJT9BubLwPB63vJP8Q+UmsQIvL8tFcQGv3y0MsM2Cl8T+Ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778162254; c=relaxed/simple;
	bh=IOKVhtpm+F3sEk+DzOWKYHRy2Kavm1j1FO5fDqT1pQg=;
	h=To:Subject:From:Message-Id:Date; b=h06E0yl6Cvdz5Fv24C028xTYwZ4Im1EC1s1jIMLpadndBq3D8mGGfMW4QhLdBIz405OvaBOp49ESyjnOy4HDihaVKtZI3pcZ6A0+mgkQgB0xhnYwSMGjDsmo/1E1H7nlfIwFX0EI6vD3tiSmNNQ+kbBNU4A0TMuTaahRYoPJma4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ormXLAOh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ormXLAOh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9599C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 13:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778162253;
	bh=IOKVhtpm+F3sEk+DzOWKYHRy2Kavm1j1FO5fDqT1pQg=;
	h=To:Subject:From:Date:From;
	b=ormXLAOhHOX/qqhoKIz4pXN8Ln7DqMdEs9RtoKPq7dOQwS2SjSJHkcn1Zb2KX9zWs
	 WcKVwEfsJe+qWxvsXsOUmwsV7+nE+Kqh8Rt9NMfQAVWKERJJFkD8yVH0uvdtQ0YWg+
	 AHW/byXExI9sWzaBQwrdpXTA7NK9k8ycbB0gvvCTANVBS+r5pvaaays3Q1awwzMKX5
	 m2jdqbAmzkXBYqXMG4yuU7uhL37WPDPiZ+A6lEgcK6NeoJLOT9RzBp+xIx+tLATYP/
	 GuMjd8Z/gpXEv4MWcdW11RhsjOuRr/vFN8u9QM0a2wI+6pMeybmiHPr4jCvqoK+lVM
	 4S0Z70znuA6iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA19FCD3439
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 13:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177816225368.6339.13703049634000674989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ce5dee2c01e6156416fa2b227bd4bb8592be5bc87dd3d75001ef92a43c4c891
Date: Thu, 07 May 2026 13:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778162253
