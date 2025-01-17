Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA8F1D6DBF
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737097554; cv=none; b=IzJ9ebfjnfmVRa2vLq9U8ofdFyiaUJbUPP5tMZFnTGgxbvU+/WYhfLBBtPmrqKokBKCmvKjwg/Kenn53xii7wZPWFtnxizUdHMlPNBMmfJ/thryLgT6B2yRsaqDTN8ZZfP5EO8YywCk6zt5sBQ0SbrgVS2tjgTKNVQUOZ9zu9DM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737097554; c=relaxed/simple;
	bh=jHO8RuFXJHQaUFI7TWwDeBfiYAP9v4G0f4NuRXcyQ6Y=;
	h=To:Subject:From:Message-Id:Date; b=s/zil3+Jt/Kg9xeiN/bpRwa73sOwd9lS/MdBFxS58c1kiV0awokqxZgq4rxtXDZzNLSd6zk28u9Xqgy7qhPYjVGZHHANipwy2QrxU4Hpn8MMZlCOIZceRjGxtxDJEnkrT+jMZStEIqHj0QO6h/+vU/J3D9RYKyhm1tbNv9TyftQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jyM1aKG2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jyM1aKG2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF16FC4CEE0
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737097553;
	bh=jHO8RuFXJHQaUFI7TWwDeBfiYAP9v4G0f4NuRXcyQ6Y=;
	h=To:Subject:From:Date:From;
	b=jyM1aKG2wv11XhsBUDJkksZVIyg/ncexqOGXo/GLDlW+8S8y4UR7S2AFJpWnJcCnC
	 zM8Ut1PgGMQ645tgY84UyA8kh830KOmIZ9e7BHS/23J/yOb+KP8ICSjxYUVQQlwqcp
	 lS5PJU/lddG8Wt9wlB9MxXFvQftV4v4FT0nR6sEoFpdw3VoNcDChLXUKCoApC3Wiml
	 MLusnFCd37/Zkl5VA2hEmVJqngzQoKLmBongF+bX2EuUT8HWoYRAo7TlKrG8sIyi5/
	 63rLe+qfjBuiPfRq1ye15SIv+PGwgkdRI898uLvOGmiMgCqpXaU7xg5FXVI050yhzM
	 AOqjxmSveFd0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98289C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173709755360.19789.105103227677079172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 022963a314a4f69f94cd27c76dc2fb9a3c108a18be24d2475147b2ca9d55f103
Date: Fri, 17 Jan 2025 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737097553
