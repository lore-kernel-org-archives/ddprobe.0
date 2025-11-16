Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364066FBF
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 01:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763256054; cv=none; b=ru4kW8DUd9j/fOEnDGwqfVqMm5wkGITaGdm38QO7TY1S+V1EUtmzvwvOBpUmtkeJT42ggdMAH3Ailu3bSHiWrpsbE0uVaA+nSXuohOl2Eorf46XzOrsGHIjAF5wxJFWfwtvl+SUbVdLNX1+Jht/Wz5y/F1DcKV/mwfv7xn6HWNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763256054; c=relaxed/simple;
	bh=Sz42MgD/veQ8s6EoSGB6PxUF587UW+5EDjnho1BKuiw=;
	h=To:Subject:From:Message-Id:Date; b=TprnJxn9u40UZJgTZGwCVaooJNuHhpxvRe0dgulJd4yisoHNdkXPms4on3da1YvAi6EsvW9R15W8W2INFoCJONhWY7xQcKLoIorgplBxmdh6/lGK5b5uoehoSXhs8sYbBEd1Uc0zXd3TWEfJ4cw8b23zToLqIYZQuyTXTBfniuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvNZm6MO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvNZm6MO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A408EC16AAE
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763256053;
	bh=Sz42MgD/veQ8s6EoSGB6PxUF587UW+5EDjnho1BKuiw=;
	h=To:Subject:From:Date:From;
	b=cvNZm6MOxkS0hq9Xt0LY6rE4gInCMNXvdEI9V0wT+5JK/c9YVUZdEfsgpRO0iIhjm
	 UIKw2JSF3LWCpGv8qu1w9zryyJuH73OMxhtBVX7aFqYbeDG9HoANOBD35kwYRq1IgR
	 DqXoZ0J2h6DO4aH5KNcAbJpSwyjWWcRmdIgA8okPV1L7oSli0FpRreT7/KfSr1K5M8
	 pEutQtSEZnM2MTAONdDp4UWzrkTSw+nwmy0ZQ8BAV9Qi1VNEyLKROloWYjCL/UkW0Y
	 eGe70vjoiHK7kpAiBzCaUHZ2rmswycwsvgOYGN6g8f3OGNRxqYgJNIl/u0dIJ2qEln
	 7fn0CLQ6wVa2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A33CEBF87
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176325605358.18686.10437814044314521747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1bf1b76317775b419b4c7518bf16ddc1b86aa08cd62368089d1a3ff2d9d96ba
Date: Sun, 16 Nov 2025 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763256053
