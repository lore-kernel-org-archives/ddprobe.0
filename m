Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4236D25E44D
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742841594; cv=none; b=QdzvRDRv25bt+TSI5pLXRyoUE6ke9+rWJlQGbKNH7Y74pKA5FGXsPJCTn2CPBY+c+pzL2MY0EgXdR1g7S6lrt+b6UFKclrhBbumgZiwvuYh03JLsBOpgZIKAKMtTBi4IbnRlZ7p3Bk+Q+AezjwxltOPFTbIesrWoPKmnwFlIPd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742841594; c=relaxed/simple;
	bh=N6RPhc7hdkmPyTeUNJo1ObVPoh+XUMkYeyYkGwgsmss=;
	h=To:Subject:From:Message-Id:Date; b=NwF7OYkM9ajW2kV9OCUIPOWxLcYrMXkUDtOVW/k3C+BDFs17H97cHwRpXkvAEmz9WZqEJFxyOR53bw+1g+Z/cDmZvpveDJtD+yfGO6phXTfLldf2FvhI8TTqCZ8jwMB1VY7H+U061V/aMPKIa/DyHxe8A8/vI8MUKW6UgUA22S4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nqq1VcGy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nqq1VcGy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B0EC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742841593;
	bh=N6RPhc7hdkmPyTeUNJo1ObVPoh+XUMkYeyYkGwgsmss=;
	h=To:Subject:From:Date:From;
	b=Nqq1VcGyjA/J1qeapQ3xFJC9Ddc16QyWnCIF5+DdR/ACQcQ033sVcxUWObSa+9Pwf
	 wPzGkX1v+nzXgtnfHmsBDvFenNaGNuolKH2rM9JQG86V7IZrnJshs7gboGBpvXnXfz
	 SZ1if9X8Mx1Pzc6c5yDU9Yff3eH6ssQosxXpFfHZVJ87Wjrqe47GJXMPcIRrFZEFVV
	 urOMsSpmK5fdz5eMzq8A4HETCC5NvlYtPqkGrqKFjnEWw3uxbrecp11kxpV/qa8+Mw
	 W/Yhf14EhnjvR3OZjSdWClGjGunH96IKvDEmrU1e+qaoI80uuMsL39Hj626gZblLGI
	 y6wzv79ruKjgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BAEAC36008
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174284159362.7403.18057925522546187359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a529b5669abfcd0676e417fe76f036dc8e91253336e33798f0e51073947037d
Date: Mon, 24 Mar 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742841593
