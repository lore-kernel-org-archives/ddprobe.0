Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A6F343D72
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 18:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783967914; cv=none; b=nhaInMcgDqbGUMkMzwjzxQyja8l+eHQM4Iisvx2ab2kvfZ/FpnBuLl8AiK/+ClC7eiB6TEdQ+H4Rh8jh5VFYyieJrFR64J9y8AvYukWL0zyM1AsZHU0YqKwCd4FwPDOY9CS6Cp5mmMqMrm4bp/uRxsQ3kzQTUU2QA5/y9qp0fNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783967914; c=relaxed/simple;
	bh=0ERDes5UBzA7X1WgAjaPMKNiRNDTc13BcnMeo+RT9Sc=;
	h=To:Subject:From:Message-Id:Date; b=AHvqRhqfYqHKcfSKxHhvkVZS5Nbtkb9n5/TniBDXs/eZlLNei/ph+OkIMEo22Z614WeNpkJ256An+CzbSqFF9eZZq8o/X5sCqIvZCOshHxixeCTjbzf6jdOKJtOYGGsJg36d/3Ha4FzukKXdLbZuGOETYhCEXy/PyJnHcjIepOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=up6Rw0uO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="up6Rw0uO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA7D0C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 18:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783967913;
	bh=0ERDes5UBzA7X1WgAjaPMKNiRNDTc13BcnMeo+RT9Sc=;
	h=To:Subject:From:Date:From;
	b=up6Rw0uO+0xZiItfJMsz7c21HasIfxdizsWqAg9NMAsF0ctDIein87sCbHdmK3Fp1
	 TrSsvBYqx8x3cdD9RmlZDxWMSQeC9e670K2bmqTUZVhVpUP7l7w9lF8dlJfLpN0Vdg
	 URkH8zZVKpf8Ia0JBMh1Ad+GAPy+WsWWh/h3SY97gWOkhV11PdVKHZxAB/zatvMVr/
	 i07IL73PyRhDXRyLnJ2XExh/RJA3+yyiitXJ4FO+zyfuMQepMzvCcLD/0zgYfb6dMx
	 juS8tuWks5Zt0By29mSHLe2FFfHMZ2HDOw7qRdsqwVWxMI9hDujIl3qrNIxbn+E+Kx
	 w6m23vPf0J6sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A949AC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 18:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178396791368.12314.233343276745128962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3489ad5eefc13e275264c0fbd315af573e6bfc4e2dc2410f77a47adb5be5075c
Date: Mon, 13 Jul 2026 18:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783967913
