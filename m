Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65F1B45038
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 18:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716143543; cv=none; b=HHSOBj5mrxxRzVILm6HEZsJgfsYTS+aVHfzO0zHEu8ridSav6Fu98rserPKWvMdJHV5/FOqfl7O3jviLXafMuVowlMNMTe4t+YbchNrYa7KrlrHFb9U3zi8FXq7002AmrUn6QH4u/GCQZbyB6fjNYAjj7QQPRRpi8yxu6yIwHxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716143543; c=relaxed/simple;
	bh=ExZNkBk9srSKkzc4nnVD3WuhFs1/EIOW5xmRL1QWgm0=;
	h=To:Subject:From:Message-Id:Date; b=YEVsOvghMWCs/95DG8w0wJJC4SczARE5UIMPcCcjyJOFhUi65/bfyKuVWXpQCe9k+2UeVWLqMCUUYIHTpClW4r4YMtT13Bj9OnTw2QQXRhhcMrCWA0dNR6BwenHjdMdbNCZYjPdGvYi92BgXM+ktRLKTfmwEQHDRGrb1IIZyIWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHn3FgPV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHn3FgPV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E806FC32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 18:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716143542;
	bh=ExZNkBk9srSKkzc4nnVD3WuhFs1/EIOW5xmRL1QWgm0=;
	h=To:Subject:From:Date:From;
	b=UHn3FgPVxcIGiu8ffhBIAfawc1aPuk+vhOLveDehLj1f2FpgPDFtWqsfnmSkcAK95
	 /tipH1MSi8dBdRrx36gsp9oKLotlwQdYRWLHm95Z5RVftAYl+VbtVBrPtiKKoMTkT8
	 Qnn8plnSr9fwg/rAPzNv99GAo6UzWwZgP0zwqItx8rooKfC//PH+1PyBbFhxOOmbcv
	 K30JwxhJ607DIjxvyDJ/Qgw9zbZp/v53Jt3iFQ+fTV5CnpbvdC/J5VZGucMDqCW9BF
	 CgvtKgNOIB1ifg0L5/+6d42ODy8zpCmRXSi6XFAqUTohlUwIwxmCarebiTaeylogZJ
	 W8Li/v9amQYZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D60E2C25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 18:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171614354283.6617.17808330462358064348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0a4c18e25e6cc9a2aa72b2baa71844b58769ee13e0d0994cbc3136fb236b0a9
Date: Sun, 19 May 2024 18:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716143542
