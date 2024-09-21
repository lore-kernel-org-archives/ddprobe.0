Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D37250EC
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726913754; cv=none; b=kpbJlq2NbGadSbw8fWJM9yKjQVAhV1mZKT/YdVCAQ5E+gRsWYaIJ1TajiWHOzopIndqh/tA92CmfZvxdmrjTv/68WLhBpMqMv92+9csPqpmDlwaHfDv/pgxmcZag6IyDE4RpFVJu/016ktIY4o5x80sre2jzpD7JmiLUVeMO0xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726913754; c=relaxed/simple;
	bh=VWaan82UDxtA+X8lOuvwnU3wILp1ryo7pkojdUz09YM=;
	h=To:Subject:From:Message-Id:Date; b=LotIHmVxl1TYr9HFEF06YGHxsYHyvVXa13RcgK4HMXsgxUUCuWVaM+OwbKW0ED5hS38f08ATLugSZM83qmoqcmAP+P+h182H7FvnWfNkQ+MXRKR07Sn/vqHFSmcTc6dXXNvEwa97bDdYGsaLAtacEGEdl9jAgT2cvF2Mn4bqC7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qTmpjHpR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTmpjHpR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D15C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726913753;
	bh=VWaan82UDxtA+X8lOuvwnU3wILp1ryo7pkojdUz09YM=;
	h=To:Subject:From:Date:From;
	b=qTmpjHpRrEmYwxF2EzNBXpxL88Xmw0DY6j0jbSURGQw7M/U0whYqblsIfwlVLERGh
	 CvpCuNpTczafQx4aQHVoUiP6IB8udorT7l5+aNZhsIOJpDb4GQZyLZh8lUgFdK05QT
	 K5zrEEjUmwkQjhrDhNCaQqq8+Xfw53nGIjYIvdrXZh9FYiIQNF1/QBuzIXjocKJ2Dw
	 Y9w++nNSUdqDxrvJTC8UAqNZEFCSh+9LBoo5ys1fYTkFjcRjfoVbwwhsgVSHKu9UuD
	 VM/aewNmLwH/qCmFQJEvIYoVvZdpp9nFtBjbi0vwUum/nlhfgYVR5/ApczOCpyoOoD
	 lZdzpOBqtWC7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ABCCF9C64
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172691375359.19727.18349317437163144020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dd397674e3c336b976877e5a771fa85d0c89d8348d2f5912b055a699d4c074b
Date: Sat, 21 Sep 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726913753
