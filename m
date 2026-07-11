Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3F8345740
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 09:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783761514; cv=none; b=UU+ahP/xFkNSff11/riEzeLmmw7KW5yJGgpVy6U983JPIgi4sENkeZwHSxQcGc8UKXaVqhG3Z2T28chdVIoZ/SnxlO+63vmHclJ5sV1lmA34VGz4H4TTerNGUzmKGULCQIVG4OzkGBNof6RzIulELpYBW77Q8NoLai6tNDhqOdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783761514; c=relaxed/simple;
	bh=sg2LyNG3iIUKw3gfJ5EOG6RFRPnuT0dIczwvN1eyL7Y=;
	h=To:Subject:From:Message-Id:Date; b=ME6rs0Wg2wsLEWFt86mWuG+g+j0Zz+Dpn241Z6gaRnnOyNhiVZdpKb4DNZ3bcxO8u+3SZaNYsMynMgm4S1HsHsLdmzTnrbea2momsLlxN9z/gIII2UYsije0v0v0NhL2vpJ1LrqwG1W0abfluNXqJiguNest4B+z7ou+lcE0ijc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MVvlemTY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MVvlemTY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA6BBC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 09:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783761513;
	bh=sg2LyNG3iIUKw3gfJ5EOG6RFRPnuT0dIczwvN1eyL7Y=;
	h=To:Subject:From:Date:From;
	b=MVvlemTYwbxT8cu+7At4myzhWzj/Ts3gpv7W9FefDDcIjIQDaleIdJ36ptsazwwdD
	 za/0xcEZ40YkRaqKhTWimbQ9ttIEBOaV56qgNBtlHveanJ4n5F27ri5LNpD9eTaaZW
	 Kfj5iAc8rO+JleAtU9lAsU7g7tiKOJugnR8B0/UNwxKvCE8y1vNF7IqHCqVpnBlXIK
	 spTnzKVbylDB3w1FHxpjz627MseU9/lR3ZGn7My6CtyNpl5GP2XBIiY/Q4D5NhokKS
	 zjmNXFQGLZ3m9JK3cKsPDrqoBxnpff+QOE+pJhCtWq5WEI0Rfxne1WUzQ8TmwyzPms
	 XpCsq4uaGSFcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BB6C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 09:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178376151368.799.7706174832794636725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4861632a8dbd5b00821d4362e50bb739a9032e508f7ddb11118167ff5caa0a48
Date: Sat, 11 Jul 2026 09:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783761513
