Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 667B22AF12
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733088354; cv=none; b=hr/rwCbwxnN1EvcEBF0u3Gc/+9AvGgz2alVn/9TYVYUieT/BfLUeE9MM+V8YTZQdtYSPGek5MxWdc6fNJLHvtRpV841vhL1oPv5fKRm6CqRIkUdx6J2+O9OG+Ng1j8oYFJ5XSlGUGEcG59D+9gMLlmeKmKBhgnCNckDNamoI8zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733088354; c=relaxed/simple;
	bh=j3BesF5d+W4X1EJp1gKMeruq3wBNdr4EKdxfdqjmzQs=;
	h=To:Subject:From:Message-Id:Date; b=n6sK5hQ1Gdk58Ke/5wQI6bHdvl/wkKk/T7PvpODgauoED8yNH61dA8RihGahGmJaPW6N6bUTcMAXstenfdbW0PWm9l7umAQqlltd2bJWjLVX/f1RKdEDoj+Jp29BWsRGWkqiJ1CSMbgWbipRIZ8R7s4psPycW+DVQ/WMH/FqHd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wp9sXZD0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wp9sXZD0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4D6DC4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733088353;
	bh=j3BesF5d+W4X1EJp1gKMeruq3wBNdr4EKdxfdqjmzQs=;
	h=To:Subject:From:Date:From;
	b=Wp9sXZD0B80swhyyq9V+/v3wItO3IROAwmJDu/TkF8Hyy8NwHQUC65VjZwxCKv2EU
	 TVur+hL0DtlRwGxDQMNdI8WUJcP7QzzIYzHBzgYWZesTAantsTJuA+9ijzWXu7MgaM
	 a0Y/c3iZAdb4Ouhq4+Dh15lEfzrBu+o/NmFTojlMdFyzgTv19V+3bes/s7R5twy999
	 dmumNPGbHqkE0GyK8stbk0r9YRDD3AGEJGmb10KaOcD307arvXr8MS7yPOeVrPcREz
	 4lltejX+kri7CceaWpZiRjVhQ8fQqPS7fIVnqY2sznicetdFbzNXemE/2R5ot6L6B/
	 qhLD8yS629Yjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DF1D4978C
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173308835361.20086.15299689391761435987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50d1d7ca95f5c900a9e225b17f3f5848f0914ed0a27ac19d20bb78309c0387fa
Date: Sun, 01 Dec 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733088353
