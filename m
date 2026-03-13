Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD8A37FF67
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773391494; cv=none; b=ImdfGieg2vwPlGZYZ0P7Q9z/yM5liraAxJ5D6hxtiLjT1HhtLZstPPfIMvOCnhREx53gMTuzWxH7+czSwwxo9t2IRhGwZ9/2nrCAfRzMs30eW4ruWVmqQf7sfmBJYrxx/XLz6BAPnuh3vhgRKFZlG1F9LBVYw+e308Puubt8ScY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773391494; c=relaxed/simple;
	bh=MySlKkWkhNn+XfTgMkkyAQPEK6zBo7K9fQOfhcKI88c=;
	h=To:Subject:From:Message-Id:Date; b=pvx8fwb+4rJkiD8l8+ShhEMMNbvw7yFWB5NF0LTPzmB+HyHHfijVi44CB9za3oGNy6DRyH4LchWMrR2JuEYXVokv53lFSt8YVu9n3u51VNtBvRDNXvc68ZCjFelKFgf5/JKnr3ghQDJsSV85w6F65NA6IQ6iuXI3aVq5v6GxX9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=min7ppKm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="min7ppKm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3552C19424
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773391493;
	bh=MySlKkWkhNn+XfTgMkkyAQPEK6zBo7K9fQOfhcKI88c=;
	h=To:Subject:From:Date:From;
	b=min7ppKmESNdv68CzxVa8sQ6kB3bsU48haTF/Gk1ODkY+4ROJaINw30u8uVFWTW0D
	 k8gUWV3G7zBemEaDbnXBXNqPMIJNDQC+exi8zVxcBMplAU5biv2w8ybrO9FwPGsdoW
	 VEgWv46f8vgWo0/4O5sXi8lnFdmJpLfVBqf/Ffk5OeezaNtoUZiXoSR+D+gAGmlYol
	 PmmpL9KQi+P/rTEmgJ/fhBCpvBa4hYRCtuACNy/ikaMwyc+juQfBSkw/evEkGnZY/T
	 t/zioGsCBCBpWfl+mIJhrSPFPuWx2kHrj7759GkLYzWMbyeUJyiDGj60hfzkQupeIn
	 9BL9O7JIuNNtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC52106FD9D
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177339149358.25299.10974978691698031171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da16565a854a0f4b16715297eeed91dd9d38c1c639bfdd4e9b449076840013c1
Date: Fri, 13 Mar 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773391493
