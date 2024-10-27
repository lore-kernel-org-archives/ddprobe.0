Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2502315E5B8
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730036154; cv=none; b=YQdS8AAPgTtDnTXB+E+KpVg3kXJKQTHMK13OFDqCGg+ElOb9rIk1HR7hAMhGyhz51hhisfQ1bPj+GxUIZSXm1IMJDQ7DnN2egm0qj3Eja+MxlHaDj/e5u2a+XhcScrWLYSNdlF6oW+BZ/lgb4bVoropEoMjQssP+ncECaSO52pE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730036154; c=relaxed/simple;
	bh=HaEBxGW0nlIs9FXV+v3FDlUxhndyQediRHcZWpoX2Vs=;
	h=To:Subject:From:Message-Id:Date; b=HOEfZczhoSoRkFtmn8mCKkOCEVOgIpb+h2ACpQd7tUnnG2WPgOwaaLPJnvV5xvXoUZYko83QqPAHPDBJB5huHCKO2/DJRdVhkZR1BijLrxtcHhCKrMI+pbNUAoLXSNOOkPBV5SXkj6smiSAj1ltocXddL7/hvSG7Got5RBwQ5EI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CmNMbldg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CmNMbldg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC49C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730036153;
	bh=HaEBxGW0nlIs9FXV+v3FDlUxhndyQediRHcZWpoX2Vs=;
	h=To:Subject:From:Date:From;
	b=CmNMbldgtkdw7e6/IyhajiPf+Fj2PKcrpQfwWMmId8z58qkCnnzfdL/N7xP9r/1cn
	 XQsxiE4965Qw2/AfP4kxEwNWN+QENAiFB/J7bC9i7ouhEAgicDoqQnGJ48UzoN37Y7
	 XgYi5QfWVJMve5Pyzt2rXsN3YASEmNSlCcv6DVFR18PZPkufVgxuQ3GWMYCoGw8b7J
	 T7MuGUPpniEA8QXkL+o4xhhmq/JDdVzHDkFR0qAon978ARkmsDRgRp2bzktUL3jawb
	 K2SdcavYSIiCwoSd/fGjviIsxRQC96FSJCqkW2Wd1PtjGWQg6NV4Xb1zhogFIWTO51
	 yEymkjFRftn9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A630D116E8
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173003615362.9463.14733837269674618468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae7d27b04f2ff637e5eac22e9e03d11d8998f1245e474df7f4178640e2b4a720
Date: Sun, 27 Oct 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730036153
