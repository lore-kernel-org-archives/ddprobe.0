Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1781C23C4FD
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 15:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763652714; cv=none; b=Biziw+hXHUzgsbUqoHXRMDr/ieUmChkmSKt6pkFrsGg1FWSE1yLdIf0qIyfkFnS+hU+GyhIdFdXTXAaib1vWzsBbnTeYtWVIrZq53wN9lGHJb8HNd7Q+FwAQ2Ikpr9HuQIfO6Dkvz8pQ4f9vlvY2F+AFQorjtTJUhjBd7AHm6uQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763652714; c=relaxed/simple;
	bh=FJvwB29Pvhp1xv2MoFO6Q9R9dScHl2pBl9F3ZQb+ruU=;
	h=To:Subject:From:Message-Id:Date; b=X7z1vqWs2+6K0efQlRGBcEm0NBqQ41VINDScy6X6or+FmNeD53YJj6zQWyCctEfXC9OWb2rMf9eoFp+jbMynbYmge27zVXkeBA2qoIJNO3uT3eW6tcCzb0Vv8gAk1Y/z2hj5y0a0gzx7CB0jgILoBtX89DPIg8Re4tobIbYApfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bCU2oAvq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bCU2oAvq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2FEC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 15:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763652713;
	bh=FJvwB29Pvhp1xv2MoFO6Q9R9dScHl2pBl9F3ZQb+ruU=;
	h=To:Subject:From:Date:From;
	b=bCU2oAvqFIg6EJ5BdMR2g/+Wz5HrLAH7Rb6zegZ9zgKUuz/dgFMCjZXOYkfXAGa14
	 qtvgya5BU9chztcavZ71Q/FcWcMVfH9h72JixXseBK0Zc6nWdYDEpFn61mTSEjUSyk
	 ucOaQuvboEUt+NOmZERVXRxVW8wJ393yRsajEHZAvCvsueTfDya85sYMVSQgPhmECr
	 ok9reX3HqwaAbVRcxxLf8lg7c15X/HqEAFeMSlARM9TJuinJqPm9/J8Ar8piG026yH
	 pFhHNGhm4a1W8AZmFki6Kb+1ySN6+e5wKaqjQt+HVnTHWpDNfzBSOc49wz+AN8d3bE
	 stdAvt0ILQBHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F60CF8864
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 15:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176365271358.10679.2174570487073867660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43aaaf50bc063bd3869be5a3e5a5b49d6e56c7a24e902e0a112462099ace9893
Date: Thu, 20 Nov 2025 15:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763652713
