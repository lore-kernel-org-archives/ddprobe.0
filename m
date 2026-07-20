Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5634B31714C
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 16:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784564314; cv=none; b=epZIjkeZ2vbYyfkq3UayCzvG9j60EP4nyDw6VOeyjJ88mAtVJbMTfjU+Vsy3eCMroF6R8xOhpkrdsSOf6Gb8xdb374V4Jtho2SagyY+hGUlh3ATejHTdmxZAYOmwAPUaOvjLX5sv3bokEka7riz2m/2lcHqvOwIwMktq6rihq5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784564314; c=relaxed/simple;
	bh=O09wWOjYoZS/3Ngp6p+COp5ihdkw3b7iodeyFkLTjEc=;
	h=To:Subject:From:Message-Id:Date; b=uxHigGTINAUoXKt3TzPwkOcKOcPrWrrz0db8R7OR8THRSxseNb//6clNGSlfx42b+FWF0UhopGKEa1QciaZoGnvivZhHqfFr787++6F73Oh3ubBmkW2+HV+M0yMo6jbNldu2jk8MFbHnZvAOGdX5v6FFEDiBePSaYNq2FEjWRsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f9AjDq3V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f9AjDq3V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10E4C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 16:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784564313;
	bh=O09wWOjYoZS/3Ngp6p+COp5ihdkw3b7iodeyFkLTjEc=;
	h=To:Subject:From:Date:From;
	b=f9AjDq3VJsmAJgcRky7CQrCDeQse+HI+ATQZdZVAwljrA1ustpG664L29iOWgZuOy
	 3IU4DdXWgaNNXVH4JsVJc8xCadppEQ3DwB2RdaSW0woxcai0YPdCs+cbcrS3kf+Wdu
	 Y9mAg8DMafkRYJZs9Jk/uQL/BD6U8NA4xjR43Q04Z6vfU4n1M73LdDcqsBc4tIRsp6
	 gbTllsMMFWacYfJgTgoQYALo3UiBOYQrBQUtq3O5U0XLf2lgGuhLDUoOlFtPztGHA6
	 ZOoGNyUh70UgNZTpykSl3cRkr5k0S95SGb77UJtGGpcpZ9cmEoqvsN7CZ358+FCLho
	 C6wATPSAAdm+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCB5C44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 16:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178456431369.20856.12163204493840636985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62eba0e8f1add673c67040b18dbf82f39c914f835d80e644cb5614d2efb6acba
Date: Mon, 20 Jul 2026 16:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784564313
