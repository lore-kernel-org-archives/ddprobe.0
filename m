Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0372E3EB
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727750154; cv=none; b=qa2/4a2YRdNRNB3j+6qhx4yjlkIT8Yog0B5CqlL1nxFl2RhCZErMe90UrT9wxpdQ4PcA6OKsH6luDSF8+z39HwFdjG1/MbvZAK8peSbuwqBi7oTlnJxnQ+AMGSTFahksUghzmgPV44NujJ01RBXz0npsMqR2g2jinycxChWigXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727750154; c=relaxed/simple;
	bh=zbRMmkx8sUvIOo47aE3p2oNAD2NtrZ9Tju5juqVdwDk=;
	h=To:Subject:From:Message-Id:Date; b=buW9Yyk5N+YTrpYJUf5nn3oEzTmHWxGMMPoaUs4MSGSpicjQZdwZ1aipBxcRH5H9MH00F1M0q1Uvv5k2IjwxgUxnCmcojdtHtkWyXXNgDyg6zmlQ78z5l+lcQpydlkbGgAZKtz3Mt8DoNLvStzr3IfVq6/eSnuTOY4SHIvcwlA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nNTTzRnp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nNTTzRnp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B0EC4CECF
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727750153;
	bh=zbRMmkx8sUvIOo47aE3p2oNAD2NtrZ9Tju5juqVdwDk=;
	h=To:Subject:From:Date:From;
	b=nNTTzRnpyq1PQIik7WjTqwZjsegWlbcO7D1DifIr08rIheeIm4P0sNRRiF+Ce1soj
	 MAEHNn0xnSlfHPOqMmI/6i+1e6Y1YmZTDmIRgq0b0Qp0jLNi0Vxn5p+GrrJGjMPL7k
	 gexf9vyPw4tRYNRXx543NgDgPD9b8enB7oP//4oujqG8dZ29fgXeQPqqf0sxFpqYRB
	 7jvu4hK2Jln/snlFXnXIRHgwgRUt80qN1Cyw/JoHyOIuqmclOO9HNvONfbY/TC0kCP
	 1ixAlFU5Fg9+EDHhTayqf7mkUSO9wKNLl0rPXriDX1SU7mw4X1sO1TKJi/RVxON6K9
	 S/Pcq9OZ+lrhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969C9CEB2DB
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172775015360.28704.10798108264515975340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b1c79071c90f6b90b19cb2e9c13fb0b38b6557a277c04e185ebee788e3b61d3
Date: Tue, 01 Oct 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727750153
