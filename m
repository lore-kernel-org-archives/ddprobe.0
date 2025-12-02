Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D371427A
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 22:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764715974; cv=none; b=df65OLooVqI0I7X86ribOQ6KB3hk+41AH9yvh69rEEGdI99qRfJrVZKL0rnk408NwGzdu2S1UdJw1A1F9jI5yAMjMuH0qUE8TTePF5cnPTREizaVJl/v+11p+d/MhyZjcBYrnvEOmNRF15z7LJdqvSicr4yNTQezdfXysOpnpow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764715974; c=relaxed/simple;
	bh=TSuoh3kd2FChwa2YDHXve3/RVLYk8Kp1OR5qKS46sA0=;
	h=To:Subject:From:Message-Id:Date; b=bQ2bbqzpIuoeQcCrbgUevRZlAMrkiEfxWg+J+Fgjru1uNR6BFWdG8i/CQzs4jfxYZAO1QPBJ3H3VvChYQMuh0UQXEmVNLnDzN7SpmCJB5DpsK2mjaHWf2NqDdhmN/c26vSFNYPlF78bHGa70G0iprIv99S7vRcG9df8uqxiYroA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXm2mNeV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXm2mNeV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BFBC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 22:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764715973;
	bh=TSuoh3kd2FChwa2YDHXve3/RVLYk8Kp1OR5qKS46sA0=;
	h=To:Subject:From:Date:From;
	b=sXm2mNeVgDXDSeyXBXTf96JDouFA+jCcyOLrOvBl98BpcZZqwt2GuFBshZrsHW1k/
	 iZ/QSlmEsNjZOLibWVAsHy5UX3hBLAmXzk/kNk0meauSXYy+pmG22O0vlEOljPT9or
	 EQ+gOmfXfbUH8v0ZhgyUYUrjQH41YXI0ag4xlwh8dyQHVyWwvmZcIFjx3gvfIzg9Hr
	 URg9J+B6NxClYZwii7y8obViPq+zvQEiUfZnan5pCE0YbtllhtCAzgawGeIfB8ziAm
	 QeG8iD9KwMdi11Ml0Z3GREn9tnS1SbQlfBs7sa8SdINckqIjY9UZsaWmJqm1W3HSTL
	 AemZV51aU/S+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F0AD1267F
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 22:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176471597358.29857.6600351888632248623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5cb08c3da8c9c9a2ce8421fe1949940c10040116f571dafa94d0dab803723e8
Date: Tue, 02 Dec 2025 22:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764715973
