Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F1B2472B7
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755201594; cv=none; b=QPq27C6RWhFmHop6s86lMjt+llMeh3ntmzSFpvKOQ//AbQV4La4IURGmMI+wsZ+4x5Kans3HUV8X852vhya/gH32rQ4XolSfhHRl/kT/fyHc5aKWGSj49sMcWO1JInkAbmTQesaTAeNsjmNm44t25H8npJ3hUvztTLkBqXBCBzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755201594; c=relaxed/simple;
	bh=LJU+0wiLBNcwl7bSzwm/y/lZvN0jN72AyCT77dKhMjo=;
	h=To:Subject:From:Message-Id:Date; b=XexDZMz5nszvudK80X33WckqhU2YT5VbzSDncYr3ZSrUzb+s81Ypbanaml6VRYAPNwESVMV6d7Gz7//E/tqFm23g/wEnejtQRM57ouGSwd6ZPJY/gG3oLhw9VbVCPrXiywlNJC3Dpqig+73UDCDJtV6R+saoUWNtlapjGh4bqn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bci0FDd/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bci0FDd/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AC8C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755201593;
	bh=LJU+0wiLBNcwl7bSzwm/y/lZvN0jN72AyCT77dKhMjo=;
	h=To:Subject:From:Date:From;
	b=bci0FDd/7tzVEMEew2wTZI5qZ9kl1zJT243C/8c2U+KGZC8uaYw9mxtCxgiJj4Pil
	 qc9GKxbBhPolkZf76uycW/N4Y49JBshklCfdcbXBgPtjnFBsjrsnVYXPiZ11WqHyO7
	 hKt2hv3m4HN2+pgF9IuUc7B9oG7anweZVJEp+rGnKSQOENR6cXlpZBylp28StGd7JI
	 qG8vRpWRawzwFIUvFG3l3aJSAdTW0FfLy8isWAz43bWuHumxEzF0bb53UK9uvfND2z
	 ymXGncpCzNUqMo2/UUTjLc1jmpULCtVrSNW24hz51lFE7NkXKN4ubypDUZRGaZTFqD
	 8rYGS+wg7Bu2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFE5CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175520159357.10711.6505094443432321259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76b5a5366f96d719c7b1ee8e5fe38e51ae8e5060d28eb5eb06408b47b6632575
Date: Thu, 14 Aug 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755201593
