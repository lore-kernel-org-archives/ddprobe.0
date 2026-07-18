Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466C23C07A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 20:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784407714; cv=none; b=j9mUG1PpPF03gv0q0JS6MaNokAYnnAnOdbMGQnm58x1NLmbLW72GBbMK5TtKckIx7VM2WXxnw0/uwijQNcfA4TmYA7qdZyaG9JiZiIGAnAaRVdyCaL5iX2okOmAr6rjjBY5XS7k+e7Q9iFrAqR6hObAeUnXBPOK9zGSIgAGpOIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784407714; c=relaxed/simple;
	bh=CxH3JFb/sHrsMcwEteQLHpXFP1DoC+StY+R6z5CwFdQ=;
	h=To:Subject:From:Message-Id:Date; b=DNHSaUYsC0RDzwvpE4SjtoC1Kkg5YBU8IU2WE846HsFFFFEj+FadtWWas2ez/L52lEBX5lbIT611xvYGi3tKXoEHW7i9WrVPHKzQ2yxJDMMwwaTL/d2MZ7RnDxvFYazvmGYex6u/k1QXzm05qiSIIRjndnkS/A1tSOf12Ko4Qh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvOGW2zz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvOGW2zz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E00D1C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 20:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784407713;
	bh=CxH3JFb/sHrsMcwEteQLHpXFP1DoC+StY+R6z5CwFdQ=;
	h=To:Subject:From:Date:From;
	b=cvOGW2zz7HI3yGtcQLTPvPVvCkPNIjeWcke089XmhG00sxrG7G0f09q1mH+BMlU+7
	 dlb/1lysbWcyypgmvdsrQESDvjb/FE8nx7abOJp25rDwopCVmzOnRUaGZkofRMwaG4
	 hhXIC6C7RFO1DhLsDz8b68Ceplj6QRO75gA+Kap0ufu3BukzUqkKu0mUOUSsV8fXgG
	 /pY2InqpfSfXgaBoHfohTMrrpHDQQNUB0OQL0t7uuIBfya+CoentRMyxAzUjRPmw1m
	 +50Zpd5DmztVdiznCZJ2bWmmdp9y3AIKFWflKYUHI/9jwQRZU9F8MI6C2OgKmrgn7P
	 PpgncnVmZNsBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B44A6C4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 20:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178440771371.23947.17183394284910584701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81e4eb815343bc31ac5cfebdbf8aa732d6e2faee457928ee88bd0dcc8c19f334
Date: Sat, 18 Jul 2026 20:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784407713
