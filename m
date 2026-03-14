Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B54613A86C
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773519894; cv=none; b=GoiT8/dzLMsKlcXRS2ntyvTnasP/vE5XmDArzrEazARcPAOX50W7P3Pjs+lsnxUHotLZZZYV/PQcP5GErLvKO7Si4gLqmriizwqmbqfbGkExSe9vuAas4pWoWD/xd2QEPSTpJX7QewCaEJQsZtimkOCVVchaQfDzmidyxduk56U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773519894; c=relaxed/simple;
	bh=gPh4HZoPCNXtkv0nuBujsb/gmxv0ginirEZzQknXcqI=;
	h=To:Subject:From:Message-Id:Date; b=TIbTqN1OhNgTDa7wc7iK65jRunkNm6QRJDgwNVbMywsJutKNzE1pbLIB14IDJNJ4k4akpPWFjxj9VdJvtxuzt62Zf9KwAXJTScRLgyMqVRz7aWxYafcKGPSCt/LVkHPbpnjccyNQBefES71sgAkK9L4F3ALetUmoan27Mp1zu4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p1dadgSD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1dadgSD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8737C19425
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773519893;
	bh=gPh4HZoPCNXtkv0nuBujsb/gmxv0ginirEZzQknXcqI=;
	h=To:Subject:From:Date:From;
	b=p1dadgSDXB2wmMK8avOyI/ojrOoQJuoy/85tBcwIpKYhLH60RFhDXncGfXkQBr0P7
	 4ZvRDr0vPe6pX7E57e7jiozBJkIJKHG/d5EOL8XoR882EyqoUSb41Kqo/SKLTJmFui
	 a6vc2KqPeH65VLYU9VwetdZAPaXSASVskriAvU7v+vNvSioJxnAfUHTGqqqckqm5BV
	 g46PLM5ghPQJohLZh/fip4/Va1nMP9mKwihKsMAvrP5CTE/BVZSdAF7EgQV1vPgk12
	 eUBKUWTpmysC28ITCx3kMQcTQ3Ki9rAb/SpBhWq/lzq79J2BpIT1cc9k4Gj7VsktvT
	 pArORznDWqQAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2522106FD9E
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177351989363.13393.11913736493654619698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5ce1a247bdfb3d4b46afc06150056afe447ac133d80ea3e850a97a9b917e5f0
Date: Sat, 14 Mar 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773519893
