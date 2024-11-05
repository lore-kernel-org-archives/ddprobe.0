Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FC016F0CF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730823354; cv=none; b=QwAr6YcNWN3wD0l1QVpbDTHhsQh47TQR259OMw2BoMSdgT04kfVkQaVLzwqNegRi/DIrZlT3wfpJdzBFNaJ4zQrFejGtfuh2rhZNovS/DHOp88ZBVXnmM4Y1QiR6ILuGpbz+qx+rPQFuOVAw4QHW4VjN8L8OmdmdOtxQNao3z3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730823354; c=relaxed/simple;
	bh=j/V8C9fgwuWOrCxGS55Zfewdrv5XAOlQcuNpW3C1Isw=;
	h=To:Subject:From:Message-Id:Date; b=W+96AykmB3oWBfJ7mqiFG/PPrUrz9FL276Pbsq587F+eLjc8wB4I37jgSNd1MmVXkRhwEwNnmnkTvLTzPTBdNNHZW4JFjUf1TSKCdxECSr5o87vIDbBNx0XPkbRUw4JFzxw78Z8Cdn/XmJ51pdAs3LOqJBK0cpMoDowjSiS5m2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IOx0OOpf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IOx0OOpf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB923C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730823353;
	bh=j/V8C9fgwuWOrCxGS55Zfewdrv5XAOlQcuNpW3C1Isw=;
	h=To:Subject:From:Date:From;
	b=IOx0OOpf41A/JAMhp3cyQpZkTK5EzMlCfzzarHruQLA9smCsvlCyFcnu1cvmYX4hH
	 CJ57mlAJEHuzcZXzjNRTNcOVP3G3WOpfStVAraKAD2lHoqUVf2qP+h1YI2S6RpmvX8
	 EuzlxW0BjtLX8LXlTWaa9CxvfUm6YaqinTF8Ismk/ht3KmRsDNvgzXuv48l0k8RYxH
	 a7Rx40/3anY1oJPZJXZxN553JiKvYxAncmzHdmDJOUuB7z0vVqr7cJz4qcw8Sc7x2K
	 hQea08VXRjaqD8zKncojVL+ef7QW16U5LxP5txtQ+7cGxK8UZSVRMXgsByZTOabiZI
	 6RjBJSqS3mhgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9868BD31762
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173082335361.23349.5833736229225604465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b43f31fe95be608c24152fdfba4f44281a33ae4ef399ef56ad543293794d519
Date: Tue, 05 Nov 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730823353
