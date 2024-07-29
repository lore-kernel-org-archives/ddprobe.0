Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD4C14036D
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722296754; cv=none; b=Yifrx+qMnJ82TZGsG3sMl0lvSSC62XdwItlIvgyCFrPKIuy9cQO5FDIMggkqJSYJ14GhmAIn90oTgXPefbJUNCJOhVwWIxyj9p/IMC+Uapki+MSPFUbxEYQ17+FlwmHCqNpL9f1Iwx/tUo+NpkyCOTB6Rx0pQxk5Oe42ogTZUBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722296754; c=relaxed/simple;
	bh=CvM5x+qJ+LRkesn0cQGwsdKo0pFKnAQ9G0WO3u4qgMA=;
	h=To:Subject:From:Message-Id:Date; b=Rr6JEES9dvcXgxrwpmt/YhSTlZeQOAUbuZirxoUuXpBSE25VA4nTo2djYtMgOIl9AY+2Fo+gr+G+dSxXL72H1x5IbBNGL/MD/iUb2+438bpgLGiOoZZS8hyju8jZf3eBqQHdidXA3B26p71TMiZ+sVoXHI5cQgUbq4ZPZDYIB1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vN91zXUw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vN91zXUw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB36DC32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722296753;
	bh=CvM5x+qJ+LRkesn0cQGwsdKo0pFKnAQ9G0WO3u4qgMA=;
	h=To:Subject:From:Date:From;
	b=vN91zXUwzjw1OVlEAYIaG+SKm9YN9XLa+ZacuL0bMvEsZ6n/n9yvQAJqPqCLuwNT0
	 mblOVtue2S3cjcb9o2QkzXsN12gqeCTmLOvt4Gec/OkkSX37e6m8xL97PO2n84m1IH
	 IX37lAX0MrMw4TaLtCDo4HmPdFgYPJFn+7pFFhidkzrSLL3iivXR9/ZCWtKElDRx+h
	 Ppe1N0bD5VeNLf3qnmmMIXZ2DF7r7e5WJ8mOvpLJtDkHKpFO9dS1CSEEf2ZxgW/vry
	 ldP58j+4dUHkOWgDXlXn7iA8n1ljO4lAp5TIyLEMqSIpVb04Ra8h6BTlgJAQI4p3Gv
	 papKh7I0qQIRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966FDC3DA61
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172229675358.18955.4329654769181106360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 400e99f4c7e1995aaa494fc1214752b7e49a07357dbb9b0875f325f8fb8789bc
Date: Mon, 29 Jul 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722296753
