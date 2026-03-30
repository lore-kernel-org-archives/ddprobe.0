Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03B4E2EACF2
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774905894; cv=none; b=RsIe+02bvtH5WvZ7f/gzypuyV92GtmY5TF2j6Iy75fHSzyfLg1lQzchAjVrHmwXNriT8i/5Oz7cg4ihXHke5xRpFr2lgWmO67XAyL2HShhA8WmriSr4d/9w7fInRtBGOi33hxqhChpUJwuh+gkPAr/JyKaXQN3LPujqp6wDsc9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774905894; c=relaxed/simple;
	bh=GZyfryd7dtTmrFJB3s7o6zUbyW0JCnY436wmhQKK5Vc=;
	h=To:Subject:From:Message-Id:Date; b=CI54FeHo0nsf9IjqNMX90dsSS2jQJTTcO5cmvTFcVmwC/knylEQJs/2Im48oi3fw8Iatz3mzjd8BVngIvzmftRJrUXaxLC1M6c+4DFfQSBbF4YhNv+ZwysHrZ9xprvXN+RQ60dxx3Rcxo744VCzrq8QpPiVJUz98VQJXEEav+24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jbnlivN2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jbnlivN2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C37C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774905893;
	bh=GZyfryd7dtTmrFJB3s7o6zUbyW0JCnY436wmhQKK5Vc=;
	h=To:Subject:From:Date:From;
	b=jbnlivN2sQSeI5zcymJjruIla7nmzB4jycm3w0Y/8TcVXkmMQ6LyosyEIdJ+zmSzT
	 XNKim1UpRD05AAIDTgDeiXlKffxctxYaStnyCTbHj9Lw1BceTNoKYy8c4g3sKsM01d
	 /iEcowWPk9qGylDXGttBYJECGyGBkqtE0yo4+/7BucV+LE4QrGx4BO2JMWi+g+bqYd
	 90Et+Jt+3ABD9p59cQlMsqA/4Rol0EDtrWbnb9CMlsPMVIDWC9YhlCJmXmijnh9fI0
	 5Bqg1c+XTf3cHNPLHSIjeICa8sQjgghtWzx5I0RkVTOpkLmzeaFVyU7s7jYBTwqDRA
	 1PTuQ0Rqw/yAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B5C1061B22
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177490589358.22426.16714957288440631258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5e9270a3290e50717b6f43c2145965d4eb9480f2abd0a6b3054fbf17e300374
Date: Mon, 30 Mar 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774905893
