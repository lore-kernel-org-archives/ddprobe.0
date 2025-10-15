Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11756272E4E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760501994; cv=none; b=R6NxiGaAggHMaxXIxorb5YPnI6bPbWelh2+7EnWd4j+HBx17S0tdM31cDn3MQeb+gKpZ4x54lKWv8I5QlbeeTZAe6HNgJMCWUIE/YPZv44VCQYDnfrdnMgQmloE0nM2CWGQ4Y9xF3c73CnR+nbzXK14X3I1ypbUoqy5WjADiX8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760501994; c=relaxed/simple;
	bh=wBwQ1yP9VwZPhwEQDe3YKTXoTFZO0JFCsLD5s1qnKnE=;
	h=To:Subject:From:Message-Id:Date; b=cj3m3sgb/4U96j2hzNGzbziWfHkY6oFCJ8hxYXmp2rdGhu9C9xFsGtYRqN/jnVU0lsdNUximaUzAAMgX50CY3Smwl1eA3jDFndH2hTX7toQus4FC7Y6OkGuzOvrbGXNaoD1cYYZ+ijYVvZw4tTcggb/k7vCiopw9MPR3s0TrODc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aI7gbz+2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aI7gbz+2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F83C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760501993;
	bh=wBwQ1yP9VwZPhwEQDe3YKTXoTFZO0JFCsLD5s1qnKnE=;
	h=To:Subject:From:Date:From;
	b=aI7gbz+2qVlz89LMv4AszVAx6upRKjRdISFF8CXVmejQrlcN3mBMcbhJrz3DYmzEs
	 eUQqqfI6kjUwcVGJUTU3x1gtyfnP4VLff0i1e2X1bfyCjn18gHPC+XXEZt8qQaHBam
	 3uoN/uuiIwyez2KZU+cw3fXvhjPA3M3EE7FceE0+ND5XGTN+s8R1jfvg5Q1ItvEmip
	 xVfZ2b+Fra/FL7hFVuXhisO7771hSi9UJgMCNSxbzlm/xEl2iB7a4hg5VVktBJUxt3
	 g656K7rMPAY3mh80EhEKBKkAe4W7baVjyxXNm1RMix4rKke8yPSvjn+vvZdUL4gEHx
	 g+S5pqKR4q7BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9090ACCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176050199358.12071.4824457074798439059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5325b7e87d0a95b8d3990c06466c19af13a990e1af74f894a85132bc6d0b651d
Date: Wed, 15 Oct 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760501993
