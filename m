Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE1E450276
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791019834; cv=none; b=K22srsvPaExKLMt6WcCxpMhDK5bUvqhMUW6i6wcbrtvDM5eQcaH+MDX54kwvklOAkWX6VLdJmUHq4mBTBIjTsNwGTuFJ0d9p8LQxOhiKl2GZQWQiOZQSQ1gPF9lq+G101x+U9o+BLPvHnnIQIXE9scyNC7ExZfj3gqqvbuXaDR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791019834; c=relaxed/simple;
	bh=8O3l6g2YZ4erBQqVoJfWRp1objQgodaoDsDkHNYYiK4=;
	h=To:Subject:From:Message-Id:Date; b=swViAzlAI/oWgg0SRWnlujcWF5RAgCpbpx1NTehMfBawx3DVMLUT9jZRedjBJcNCB1WrWPGn2+1zB6e+3N60EYwKWlUwotncIXyXRgmPPTUDh7+St5e6T5Rj2MeqmELEBEx5FqAhPUtGubzNZm5xes54bx1NzmN0GrgMsDkcjj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ou04xr4J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ou04xr4J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6B55C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791019833;
	bh=8O3l6g2YZ4erBQqVoJfWRp1objQgodaoDsDkHNYYiK4=;
	h=To:Subject:From:Date:From;
	b=Ou04xr4JlRYab8GiKD1lokXdq0MdTntb+Ea44Sh1ZxOT2vfCdoK1oP7Jbg1lIWC2C
	 zHRU8w6kbDdQo5wAWmoN9TM71JZv72nxmdTEKJdWsngtGlXLONY2hytmJAlZno5t3w
	 Y1V5cyMuHmNwU1zqJuTekxG26JlRy/hQNK0A/Fl4xZ/FOMD2tKM0ej7m7nDzys00bi
	 1FxecWL3mk0oFiPesUsin5jslyATPI+qCv53IyevZbCv5Y5ehyrDXki8QC6dHGPa15
	 h3W1Y6LPqSmlmHZM/mXaqgJQbLcbEfa4OGwTudm1lVaU3aDfMsuLL9TLjSX6XFpXiN
	 DuzlRJuGntc/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D60CA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179101983368.19965.5570849430640274902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbb094f23ff02de1559e6bde7160adb1194491cf740816b1366998e57425fce0
Date: Sat, 03 Oct 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791019833
