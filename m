Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122E816A395
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760666994; cv=none; b=Yfxp/Twd/hhsVlDqk3sJvkbx7nq23SMxVagAhjHkOIzHVHokxdjVMGn5JeL9x+i1BdQOy53EhZl40Mwy5MULkJ4BX8zc+1sxxIi18DYryRLK2UxGqHS/fklPt02zdt2/sherSD4aQlAzb6jynD+QevTJGWt7MQYNT5q+xKbfVuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760666994; c=relaxed/simple;
	bh=erP+Bom5Gh0OAzwUK9PQREafAn9JURfiXEj8Qos5cMU=;
	h=To:Subject:From:Message-Id:Date; b=ozbFt5x1UWlMBiyYDV0iVQCo8x7dJtUXMiMPzZdtN0hRIfx9iNGpBxiVFiqbEpC2y/4N6BNYpmHssvCz1a8JsXgy8+/WadXfhXS1yakg02jouUSUSWrfx0qmM5uYK9KVIJuhefYQY85Npl2z5+NtgF5MwOZ702BCvKAjSVVxL5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=muaoDZsA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="muaoDZsA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F52C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760666993;
	bh=erP+Bom5Gh0OAzwUK9PQREafAn9JURfiXEj8Qos5cMU=;
	h=To:Subject:From:Date:From;
	b=muaoDZsARldhwHcTkq5tn2GZrpUsPO7gB8Vmam9skB+SbHBxUBkSTzRSjJgDigWwU
	 VhzdBkWyGn7EoiLpn8/MSm+Di6zNy7zI9axXnYtJwNIiZXL2Y7llCJKGLi93Cl4Vpp
	 QYQetFRR7lGbDkXTqxXT0vlciHg6UU2uurSPndztMEXbnOYX4LBpP0P7vlZjfhj/rv
	 0hb0nUV60OSG/z/o8k9t0IJdV+H8vXxHsCr1okA7QcrJ+6s3w5N1EJi+77p+rndThs
	 myIhPvp7L44VRLNFQ5/qhLMebznBpZAXBaeRjkffBiWWDDPka9drkFGCpbNwGchY9l
	 VaLZfEgbVytnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E76CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176066699358.11557.15705425232645069913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b27def9a7157bbcc0c535cb9ee83ab6472e9d893f4fc482579361622695cbde
Date: Fri, 17 Oct 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760666993
