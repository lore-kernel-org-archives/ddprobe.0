Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365AC2D46A9
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 21:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764882174; cv=none; b=ZMiTAtGuEHaBaMrz/quGx9IInlvitQxAUgDfKQFNBW+BNzqX4WSHauYHAvMG2qauQee0aapEam4m5EltcUhRFhQMfvlufHXHAqM7sZq4cC/reGp77Rl5pJv8fig+ng6PR+lRu7ccxgXtkqKZkkID9stzlMcReI9XmB8JJpI7X3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764882174; c=relaxed/simple;
	bh=TeJO17ffrpjnNF8axfhDWT4JsR3RLMaJlQSnA1IV/hc=;
	h=To:Subject:From:Message-Id:Date; b=tDMgJ9K2bG8SlINb178Sqb+XdT+UlKywpSlHXrEfvSsnqCEQsVbXtW+GYh4vEpUmVqEra6zkxr+0I3gXLAirJoUITf8F0UZ+MW3vbHD5OnDoR1ODuX/y29bwQvK1Xe6YOXev3TU7UO68pftOXTnSUea0LIyecnfE4sTlpeTZ1zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QsTVEwfZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QsTVEwfZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3BFC113D0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 21:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764882173;
	bh=TeJO17ffrpjnNF8axfhDWT4JsR3RLMaJlQSnA1IV/hc=;
	h=To:Subject:From:Date:From;
	b=QsTVEwfZJT1LhLBTNblQd8vcR7LZy5aDPcLCzJhxyyV4nDg4Eak+IEc3v4Z9sXaPF
	 W4//jtmRO1XbB+L2vkttPkE9Rd3locAaakujsgEf+/ryC0lRRliis5HpcCroMg+oUb
	 Lq2ecFmOXfEkIFprWShRpTLLAuW0D7rX+F5t2RWufSB174RBH8nkrmj2tmsyI2WGsh
	 XgCnw1QNkbjhaMKe2UiQHA39HHyK53MwRRzfvfQYgdHlX1rt67p1BRiGe8owvph0Tw
	 NaoJvoEKrZ1Jalr4AQ6u+zmMGFaedp6cnfY+MYwwkCdrAaWcTNV0weCFDJuBYNYB7M
	 CPam6cKkaxYhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F2ED21680
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 21:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176488217360.6157.12246998431367672210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b804be71fdef13a431b4fcab9fd3fe7b32cf582a89d274eda96b66ae354292b
Date: Thu, 04 Dec 2025 21:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764882173
