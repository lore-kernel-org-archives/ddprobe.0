Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0C8872610
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768334634; cv=none; b=EZ9jC/XIXoz4r8y/4NjXlykFMKaS50goCQsX4KhGcOERbxwdPZH9ZovEqFvLQ90eiqdLab98cvLrI+S8Tk2ByshtISVxb4/CWDPxa1oEx7R335RROfOzxDEHGksiV3hc7m+2Ka3FaUDCfsnrjnvSxpnXmGjSN8BlD4ylcngzkjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768334634; c=relaxed/simple;
	bh=SFryRUHxgvKreMnsBBPqVQi8R+da+AX/NcG///lUfW4=;
	h=To:Subject:From:Message-Id:Date; b=PEKsGQzBcwD2oHA3EZ+iVs3agX8NFzMYh+yolWEbUxR7B45SMFOft0X9RuxOqmyLL6JQtCrzInq1CEVuFpSeFr/ZZ0dn07MeLQTW4cI4/sADMl1w7NlaMHdIvFxY5/Xe9dgAx0Q9u9h1+EgFV4J6nrWRKKpeXl+TuM1YnRYVvY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cRLkBTNv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cRLkBTNv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E04EC116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768334633;
	bh=SFryRUHxgvKreMnsBBPqVQi8R+da+AX/NcG///lUfW4=;
	h=To:Subject:From:Date:From;
	b=cRLkBTNvUgdBEPNuX19HKetETxplxRaTVpjdUjnkhtPBZnsbgRTT3O1Kl4u3rNlF3
	 iHYBDo47PrVUat6K141iWMnY7nUhsc8sLkUnxngA/odHmdyrGteyIxE1rqBkaemq5f
	 pPs2KUJddAOQ6IHnY5HqFI642p0o6hFA5l3/yEjYOqpGCz1ZwuQ55cqc1QYATFzPek
	 T7DY3FhKPRssaYLDJker4Z9MzgEqGg7EIlHQLk3iZp5jIJVUGK6eYytUUTwBvIbyos
	 LJG82iy23ULPpXhiGzROlWrmjdBT3EJPJtZP9YkOjD6ezBLrz5j9myxRHDVF60stSk
	 j+fWS9k42IUYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90533D30CC1
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176833463358.19228.2962295943395889132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95d394a3e1afbf58d890a36d7cd4a943024d1f2cda20496a51f4b828278f3995
Date: Tue, 13 Jan 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768334633
