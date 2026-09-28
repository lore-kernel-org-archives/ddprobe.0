Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04C203B71A1
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790577035; cv=none; b=keHoQKgmdDWtJ9xzn3qfmrB8XRKNVD65pdhdUG9mxfYNgMbPh9PP91F99GhPyan22Eledwwe+pBdZj1wlCwOTu/uR7CAVGOztu/6/iFphalTuxa0GY6L7C1Z66cU2xwp7DTL9+F2JTkeQwEKRq7KgfMatFIVQ+gtcZDJF/ncJS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790577035; c=relaxed/simple;
	bh=nxe9f26Jm2aR8GGofZ6BI56TQSydi5o1s1+dD0DW8Dw=;
	h=To:Subject:From:Message-Id:Date; b=lvkqQsyxws3IYbS6NEJVZRJfVImQpudE9hKQ4d0Hn/p5MP/W7djhiyGoUnbbV2UZ4R3IHuth28jtJ4WUzeIK6nX00E0NDEYNIpgVU0RhyfzhqolxU1poQKxvVeCnUzdagUuwykV6eRb5IOoRqnLDYwBVDitW2BdmWt3ve+bgx8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fCNg4jEj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fCNg4jEj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD7CEC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790577033;
	bh=nxe9f26Jm2aR8GGofZ6BI56TQSydi5o1s1+dD0DW8Dw=;
	h=To:Subject:From:Date:From;
	b=fCNg4jEjbHhgBuw+GBkSTfWA8DZmLw8Ce+drBycr7q21zGHRi6OmGeN/DvJr2aFq5
	 t2ylc1T7DYQNcJ4lVX11f0I+FRSBIZAzDMBNa7wFp0N990YXd70Htil5z6voGnffuF
	 +e9gm4YdHkSnUg71A8cNnpGY0q3FIyiq/HjDEHlnp93p4lGQlANiqzNapHqqdfjLqf
	 rPmJptUQVmmVHpMVpkOU35PhkLQO6mJhdW4KgovPu5bDZI7UgIJhjO6yD50qj8iGO4
	 fN1xQ4uXe/7+X+NlFIfRJN9vokiIAtbp3l1mFv3fvTF/Rq+zwikoGazjCObAWnr6Mn
	 EuXbmkcLN35Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B94F1C9833E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179057703374.899.7734153537514533522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90c94edfa8ec04e002073f83df0f7e9f2ce99aa9ec865a6adfa3452363a64864
Date: Mon, 28 Sep 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790577033
