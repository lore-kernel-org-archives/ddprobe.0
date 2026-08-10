Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340CF43552E
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786387234; cv=none; b=NmH/8sYZ4N2nK/OCPw5WSRwEgfwxRkoKpHjpJBToPFagfwR5QT7J0QrJXmZTpGRLoVTYGQhlG33qijnwpX9XNAvFJVroQhdnU6CEMP91+ToTmtqWcPvghn1yaYppHsI2VdAm2MvTi+rqHHafx7QgdEnIMQdNdeHSKb8xQvdbex8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786387234; c=relaxed/simple;
	bh=xf8ArYqMf43mHDXzbFTxh5+lfOrMxsZEo8OHz1LESJ8=;
	h=To:Subject:From:Message-Id:Date; b=Af5xm/8ZK4n4fIha7ZHfw1BXuN7W0PnG4xfzYJSnhgksv/rCJ/ZilruP32PW+kd6IqcVFKhQz+Zd1t2V3ZI8QfwXrqa9B8ljo/Kjp6fwjHpXqZihLYyhiFq4z+WV++cSd1l2evOuqDlXD3WjlTQuTaX1lxD+F7jGGK9XXd/+HcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ofT41Bfd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofT41Bfd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD87C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786387233;
	bh=xf8ArYqMf43mHDXzbFTxh5+lfOrMxsZEo8OHz1LESJ8=;
	h=To:Subject:From:Date:From;
	b=ofT41BfdpGOsY7kHZNuhiEg+O6qPi+LzheCEq0LH88ZUjqkV75hzl3be9yVIX6IM/
	 QrSFFS4oauEFh2sezX7PSD3zWcTyJZ0+PLPbEngVSqmsWMD+1oeo/rxR8W8j7PTP7m
	 QonPZA/wHvcdB3e2ooZ9WTbtHRQPJJI0uPvDLor7/gY/Itg0wPMqz0ImQ4pmaZV62L
	 u5wst/ilXAbl4P5j+1YUVKgfNfgHaCOd2PP5swOdD5WoeQr4aHrxJs592MXfpx2tca
	 y1aLkVE4YSbcCd5z6EvNEI5QY6Mr/+muYEgjJJL412yQPg1afGE7+fHbfp28LviEje
	 dDEZJKYNWwtwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1C0C5AD7B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178638723369.2327.17622182236851871867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e5780c74b9bea79aa115f14806df4bce82ea2011e7fd8926a841bbd8a61e47e
Date: Mon, 10 Aug 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786387233
