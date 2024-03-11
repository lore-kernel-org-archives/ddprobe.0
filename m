Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085FC1851
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 04:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710130097; cv=none; b=UGAZo3QgyCben5ysoBYMG3UFTnhqKa3RU4RM4CkLgxxCIssBF8o7YY0h/DRrQm5AfIkDfJQ6Y6yxM0D6K8CG8F4bSGW0CQrOZiJCUUMUPRqyINd/I+3p1it+vtcUynoB9A96HqkK39GeRnwyaFVdN+VLuTpk+S7QPBtLAYL+VUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710130097; c=relaxed/simple;
	bh=JlTAkSTYWs0YTbl9AHyO2v5emO/Ith1lXg6gfA3XzxE=;
	h=To:Subject:From:Message-Id:Date; b=SI8827wPzivQ+kQnutyLFxQP0uvj8NcYzgepUHa6/faRyh+y4ekOjVmyOa+/XeqRrqmJtbFLUgCR0I4Kw30cduduhmQLIwpLJeiSgiL257IlVibg2zZxDJpeDF+JqrVWCuJysVmAQPll3B5bpjMmXlboJNCBDpI78autevLUPBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q0MsZm/P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q0MsZm/P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84506C433F1
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710130096;
	bh=JlTAkSTYWs0YTbl9AHyO2v5emO/Ith1lXg6gfA3XzxE=;
	h=To:Subject:From:Date:From;
	b=Q0MsZm/PNMuoyQ/ZbJmtUoJZ/Vd7+8o7UWK1SClW9jbPPKAIQx2HCz7Xe6SzUyyDF
	 C5aieud8fRwdN7EtEyNWaAPqzOmqBXJToY1LG9h35D+Rd5b5t+eRh6aGwwk3Da7Ic3
	 KgB0FFtQvk9/Uy8F65r8SJ/DkG+Ja/b0NH0bPZV3lLw7Z3+JfZ7IkwVTyRvE6R/373
	 3AVNs8sCDAMKxLGXwT1fk3V/ds5GZ3n4/LFJqj0F9XMmNKfqDGi4sbmkZFihSvQQ6b
	 wWPHGNy8HxA4Ttq7hEF4dQA762199ARPKk4c1Y+R2fWnrLiHNxW6Se/ancN9P4hue1
	 +CGsZqsh805fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64915C5475B
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 04:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171013009638.13905.14546923722691091009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 731fa51c21c4d683294dd56517372ad0d9c32a9e7ceb04432ec97e3cfaa5db16
Date: Mon, 11 Mar 2024 04:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710130096
