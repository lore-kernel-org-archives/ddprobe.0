Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB843B1AB
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750156194; cv=none; b=Gw7D+BWbNlpb4TR/99eiDB72EbGq+jHCH1MUaZqEOf9KUYQdiLD42T5wsFAvRwTTD58PqLgLJzVcHsZA3NyAwJU2o9d1mER4fnkSgcLZ1g9dXEjlevkA/gJqv7/n13WecV7zkeOhVO3GxZs0J3g9LpFSnvDUD/kXZhSAirEalmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750156194; c=relaxed/simple;
	bh=0Gq9zVE4WS9BcZIdgJLspMrlPRfs+dyAzTAPBp4CUMs=;
	h=To:Subject:From:Message-Id:Date; b=nmuObYYSW44XEOOYowdKa17PisZp/zeG01ge4oKZBtEQWvYPbSUx6cZgYTzsz+tHWBzik/rEAUUvnoNKfFCIk5NshDe8ODDfI6GNBmI+Gc3t+bQeGl02QNLxrD11PHjmqIxqepgwtqntoCpcttDSyc2zMSH2DN3kx7fa24VJv8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sl03CesG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sl03CesG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA11CC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750156193;
	bh=0Gq9zVE4WS9BcZIdgJLspMrlPRfs+dyAzTAPBp4CUMs=;
	h=To:Subject:From:Date:From;
	b=Sl03CesG5jjoeSkGqc6r7WytsCdoq5fTX4RKSQ2VIBagfXGvMZoxFwDN146A6V8gQ
	 dYVHNXNtse6DTURf9g1vXPRAqXcd5SkRNXarFFEYNXyoWqaWc5rySpXopuhs1CdziF
	 HcTk7EAomhIrxU/ebjdMMiwr1okAf06d1+MSZFQMUQoUSzbKo1LgwI4cZvNkdTbndU
	 L60jtyHgjQZ/wcawAHJP+0gWQf4FC8CjrHW2IKldYbo2kWD72S2bUMlXQVq/6fhfbv
	 GbTpz21sGDCpub0DuZIS7l70m6S44PXa05F2GVHdQCocbHY7t147Bl7PrKv1WzZyeo
	 +5hsLqBZ4A09w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBEEC7115A
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175015619357.6565.12113428528805075869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee88588ccb8b5c4459c4ee98a5b95b9f48c84e3eba321f2b9169aed3650b69a2
Date: Tue, 17 Jun 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750156193
