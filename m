Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E36C1E4AB
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768199634; cv=none; b=iNnIZJuMLdB/FnQQg9LKl987RC3Hv41UKC8GGu46nY0P36xffV23o4Cffxr1xpfnFC9MypsOzlZ6j8T0zB9F5McoitSeIytim9UMlB46/3ws9/uFHY/aHEoPI3N97flFCRgG7FINIsK52430QWvQUboWNHD2iP3B2MGo9HEDUPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768199634; c=relaxed/simple;
	bh=+F4h4itUBgqwc7tSpqPoIDWhcxM32HG3IaLsUVh6iQM=;
	h=To:Subject:From:Message-Id:Date; b=iatmaqlEWWy4kuOe3EVknNEEnkh/by25BK2Gb4AjzrMaIJfCSkptE/a4nf+4sRGBa+s7JuAExjCGmQoFlUD6HH19Z73z5Ea4fQ/7EJgrWY/TYQG8V9qwyAHETf46rY4wwddKucSYSovroJhS3LWP4qOmWcnJbjijbGL/PIQ/bQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lUomqzhL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lUomqzhL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7B0C19424
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768199633;
	bh=+F4h4itUBgqwc7tSpqPoIDWhcxM32HG3IaLsUVh6iQM=;
	h=To:Subject:From:Date:From;
	b=lUomqzhLrmdp1XbRmyzTolB/dUOWIiGH5Q1TjtJqqU3zcU+iKitnw2HT6d6xeXtaA
	 Aiq7Em/GjNeEY25kG29uLGFQJ4iLM0oVlxtlfVWYNhIwTEhu3kWrmXFjbzymF5ptQ6
	 2k5rmMzqn+0Yklye7PEEkI8vY1qJ2EjkjqHBWe1vQQT4XF+Gkfo9W16pFPZRQsQ1Mg
	 HY9bitK6WaSULDxsRiIfLzlS6vTskemckeBnE+xVgBch7J+vA7Q0wbNXMGOy+DH1Az
	 HRDghcqHlPVDJtbmCnPU0nFUHnaXvSdWQjueq3xh+Gum2ql9LjC2N782ezQ+oSgoyI
	 5w/EAnvpfR9jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D135D2503A
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176819963363.9459.6419038968527306484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13524b74bfb8c59c9ac135df4d765bc89c41f601b6c34efbc784bbfdcf0ab391
Date: Mon, 12 Jan 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768199633
