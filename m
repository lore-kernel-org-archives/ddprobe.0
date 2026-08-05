Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40EB346EF88
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785934834; cv=none; b=C990f5smqASGGcdnU/d3hHTbLNPf+gyH+ao8J0wF/MsKRTTEi0O+f/LnAiksWwI+qKqtGoAFT57KHZbxML1jlEivszgqEaAPDw38uCk+sWbkip8cOVUrV8GQaM/oAANFnfZx5OeGnLbsbVK6S2qOGaZ9gPcS8NIMqh6AG0cCHUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785934834; c=relaxed/simple;
	bh=61bXYPwBI+zW9iR3X6sLASz/KNotOpUdr+OuiDMPG68=;
	h=To:Subject:From:Message-Id:Date; b=ozZF+tsUZAyIIMDWtGVoA8lMp+BBK0RxYRfIwBK8YfZ0r10L3SdbLr09KP6m4teVVLSbNfgYpCIfnoS+FSrJqt2BEeqOxVEDY/f1+jMmaB5Oxz60NVE5iCQUbo396kV606SWE3MsSmTyexOfViZMWKo4MbrwUO69QOKXy8qUb30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eGVzXQoe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eGVzXQoe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10CBC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785934833;
	bh=61bXYPwBI+zW9iR3X6sLASz/KNotOpUdr+OuiDMPG68=;
	h=To:Subject:From:Date:From;
	b=eGVzXQoe6neOr5f+JeY/UWpPpw3ccS2vTW8qc0SG3B1aTTjZVWZORj5N7qjopHFTo
	 GmKlAWxQ0c7Vfo1QARN74NUbZjIStnDU+uCKEqrILHxT4Fs4wIOOOja6ygq1wIqpz7
	 2sAnxXgNEJUCkyy//hF+Q5k3LtB5rocf0h+3hOR5m84IYL/isGAzSF3pr1bqSfPTE3
	 OzAjN0KtAfUWxTdkUF+okhg1XGOxVeE9LZBgjlZgaK8jX7z9dohS1b+uOHr9v9tsWT
	 gJyFffR2Ss7yrWQWxePcT04bpzGAn+zTQPeEIKib9m8VP7tKvrxyWos61dlXsEqy1/
	 df2M8wcZjS3hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE57AC55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178593483370.13472.8157476103972222131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f012c256d416a7f6ed5f7a529a42e4a6a5fe5ac87c87ad189b17fb40b31e58cc
Date: Wed, 05 Aug 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785934833
