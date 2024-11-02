Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3137B1E515
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730553954; cv=none; b=g4sYfHYvcndOQ/IRUxEmnWAxQLqO1v/iAJxp3guHJyiIqmepAEm9xW582XuI34PjA2RUnvg3Fznz4GlaZSIXp9f4bsvfe0YCzi53ZrH7SaN2sPEnttm8agUM7t2rMhYZNC7moBnkZBf2cFEOd4RZ+YetxTmsJsFe2WnqNOUkDXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730553954; c=relaxed/simple;
	bh=abGLmpYJ3kV6+6jm6Z0VQg0lJjmby5py/ZtPS7K4qFs=;
	h=To:Subject:From:Message-Id:Date; b=j+LdnemKJ1WRO+NxPZfBNG3acX57+3gq3DwreFW93d6cIuarhwra5dCsNJuzWs9DUHmrRD30lKGfCIJYJqbTveyaBuXhARnC90iM9Ybp3j8s5EJHVX6DaZ0xHQMGmg5WD4EuwV3IwTBe9ACFkE7jE8bBpYqgOxl85jI+tUl1J10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYHbwlTB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYHbwlTB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5359C4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730553953;
	bh=abGLmpYJ3kV6+6jm6Z0VQg0lJjmby5py/ZtPS7K4qFs=;
	h=To:Subject:From:Date:From;
	b=AYHbwlTB9iSaIHM7ZML1S1EFQlP/5yRS7SQQhtk40aBtDa1aeZYtqEN4/u2AM/680
	 qaGlEDuCWSWeKqD13IEvhY9EZP55YdLMwhCqcpp6Y23QfB1zpNbOMDjo1p+6PkY/Tx
	 y934kFzVANpIwo5Bh/1dkxNAZ8rof2i9JLNgsJFBVcMk8YgaRt654+lCqqXGz53N+a
	 DE8bDQ53A5uxVXc9J7BUcu2qELMa0jcyEDlY5+VjIzsiS1zenbWTS//U0edsMKNHO4
	 59ZgiVTf72p/594bGUTyGrrXHD3DKIOXsHDXu8OS3JohHIZb+dcoeDItM5nAsZ+m9Z
	 jMKt/luYxOliA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94078E677F5
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173055395359.16115.3194112070935983001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b14d493ebee1eae608a251d16bef606d60f30ece1061950882a13c91505869f4
Date: Sat, 02 Nov 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730553953
