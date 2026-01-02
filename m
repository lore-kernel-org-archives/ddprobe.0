Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BDD5224FA
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767314034; cv=none; b=i8OOIfbr1E6vVEwKYKONriAZt8/KVyOd7Ehbt60Gt4ZpReWB3PPt2sHFJmd7Dra1mDKdXuAUOtaayyes1XbpvSYBccwZDnKyRX7K735v7QXTeC6WWxls72uEtwc8BEAgXo1RoTjhevpg9vO59gFruQtEU8R4Y0q53tg7VsuakO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767314034; c=relaxed/simple;
	bh=mwgxVeAw+Crj1C0ebYXvmjappx6OXWWwPY/Cvdhgnlg=;
	h=To:Subject:From:Message-Id:Date; b=mvQMZFuil0u8RJAyvekxALGfXlxaH11vtTje2V9fgneerOfbAuUcKLGf+7kgYBZchHosLrghyg00zfvz1fiZITbTldY3pvQrKnEg5CJOym/JLvLEdP0xyK28F2IRk/SNklXzyvZSf4M9d+zmtOFxMRDja2gRkud4pTP+eXyPC+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=srbsuvk9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="srbsuvk9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5052C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767314033;
	bh=mwgxVeAw+Crj1C0ebYXvmjappx6OXWWwPY/Cvdhgnlg=;
	h=To:Subject:From:Date:From;
	b=srbsuvk98Z/KlGsh86mry+4JjQqWKEWb6nH0+y1GI2INzoB6hc6Kl469RSUxbShY6
	 9zmVLQzfR3jZ4zCdwQM4oq5sAiULMRmM6gtE5EzKri15Agxkiw449o+DYbIBnTtrSG
	 9hzlydoBH5aOpNNRKY5vjnP1EFjNRRH7oMQZfiV+KUzNQuKP4CPh5+92fC30znz0O/
	 PJKf3DmtFB/YrCl5aJNc19lgVhTrkzEL1cC/ciPsVa4hB7ButlrouP/uoNDYm/Tent
	 Wd5PHmNJmL3SwYBx6Z6c8gp1GWZNzzRFw2P69yzzFPjdF2kKIry5X8ivk9D93ZRZaC
	 FlqXZ6ZM5jeWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94683FA3725
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176731403357.23952.3765546212748682590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a40ead57de6f12c67a1e669bf54d1041b2e8fe57099209f694d715bc460ff02a
Date: Fri, 02 Jan 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767314033
