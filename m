Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395CF502BE
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 10:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741344534; cv=none; b=kPe+pswh9vZ9P3hrzDjRIBNg8AYXF047VXsqpW/KlEedpee9X6JyFhbSeYSKYoqOLh13zcu41ydLGTLfq6MZsPsOnK/xGRw4JDcEaevqrUmWD2Kjg97Jy+kmvL6XmwMI/ukOBAkCW4lN+IauFrXMD0NE9v8s4oKW62RDiprN1gE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741344534; c=relaxed/simple;
	bh=V4SwNIbvU21mqxy3nUBdneGwqaJlFpBIt+Azdk7OY0k=;
	h=To:Subject:From:Message-Id:Date; b=OizeH98Qgb9Bg2ogrFk9I0KK45wtewY/IzFfPKMF3dXjsk+YiuhlJPsXYwMZMCYuuT8H5nTDJWuz9ao0KlzH5RjPUNg0Pq0Tamiv0Q27rHUJaKVk7sHnDyhfjnDyovOtTd8P10wF5lNALKvPgGb4EgplNouDMxGXMPolf6Eoxr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YESLhbPl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YESLhbPl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B003EC4CEE5
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 10:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741344533;
	bh=V4SwNIbvU21mqxy3nUBdneGwqaJlFpBIt+Azdk7OY0k=;
	h=To:Subject:From:Date:From;
	b=YESLhbPl3oQqP3mq/7ti+dweVLxli6fyvGqDXFsRS3kaYj13TI6FBwnVYmYGNqhDZ
	 Eilmwr71Mj/qoOlmxDGKAQ1L3IipUlUCcRtsPJsR4xA3+874bNCy02826bcw4S9bdt
	 +Api4nCMakcpPnWA6qqWTs/EmMt0WyPgGWJ5EO0tKYwczpCaYnEFZYVZV76S4aaOF5
	 Y+riqrzPLqyllT/Wl6tmm0OwtnRMEh9wkrKshhf1CjJ24KDpxEoLEiujdE4Nafn7Xf
	 rjq3KBQ6GXMa1w8BdK4lZWVhhNbQy1+/v0yOmEu5s4g5tZuZCH6ArJNi8QyzSLcmwr
	 jpu5I0Tn8ypeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92482C19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 10:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174134453358.30587.10249183835521653756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42f7184d9164e18770b6d889ad2c7f82bb136de7df3cea2fdcb3fb4e115721dc
Date: Fri, 07 Mar 2025 10:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741344533
