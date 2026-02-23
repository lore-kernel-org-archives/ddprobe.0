Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9882110
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771806294; cv=none; b=RNajOpYSM9r/xIfhj0qGAqJCYso4cOZtYkPqEPYft7BmZQ3xLSa49JMDRtsO11AN5680K0u9DR8O8pOQNNkX60ztWHTzluKvv9vJqZuqtL5mib2uaOXsuPCgXcsrBqJIzPpLAeWdXTVXiJYeoKRZnRqERxB7jwh/7QSukmpobxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771806294; c=relaxed/simple;
	bh=dRs/lMU+hVe73iAlvXr7i/QcWQ18JhbLrlikfvkzozo=;
	h=To:Subject:From:Message-Id:Date; b=Cs4WRObsYGJEzRKYJvJqDRaY7nqWVJgIxKlaaQLX+shjZjebU4Lr4mkmq4Hrsie3iw6o/hxPViU5PhW6AsppuoqzETNSXBtmPkZO51dYtFLFUjQ/cBbBSV1U4UXRzqc22VXvovRGlzvQijTI9U0Y0TPiQlQEpJLOIIVVPVNJ3Sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VBW7TKpv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VBW7TKpv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1EAEC116D0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771806293;
	bh=dRs/lMU+hVe73iAlvXr7i/QcWQ18JhbLrlikfvkzozo=;
	h=To:Subject:From:Date:From;
	b=VBW7TKpvOxfjzDWcU2NUb2b0XL5NJGqLM5g/eP07FCTm6WJ7ANUPe7BmBbLG8EXzH
	 Vp+6F0zdKnkv2w3uFRtwsFMkZLd512U7pt1lIK2bJESLAJ1/3YxDOIrtcpm0ybw8Lu
	 9zmvWSLIPV1jHi2MokgxKbH+uNIXUjq//WVF4XPszDlQE/JY0djkr1rVyBmRaDOCu6
	 AVpxJS/VxqwMnxDH8uu3XbFnDYFk5gUJdLlfS883XYnJ6t2YloLc8sZfeNqZ0wJcJz
	 p+1C98z6LzbWPq8dGusiU9WoBOm5VdTqEJ4wxfBg/T5vRmKPNdt/EBGNLZjl1ob3KI
	 b9+QijbRqt/xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AC1C636B5
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177180629359.9695.11000357977172775815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e15fa0f18d58e00caa63bf0794ff22b2d74da8c38ff753e87b688cf2d4a7898
Date: Mon, 23 Feb 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771806293
