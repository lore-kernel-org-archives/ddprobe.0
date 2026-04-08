Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 510CD18A93F
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 04:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775621134; cv=none; b=YyYpEFcRbJlrFVisKkG1Ck+nfseaCSNYXbbK4kh0IQ98Zo+W4vDSMxKZQ4gUgZcVvlN+/4gDoJm0IIrEm+N81EKUUCKc9cpvcI20mggPL5sMQ/iSPLzyMEajgEpimY44879E7brR6QOOfqECJ+sieJfSjODnMOLFBjSajWJ0WH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775621134; c=relaxed/simple;
	bh=mNAHL11zExtVN+Nb+y6NUyvo1omPhfVU/2lFp62eaV0=;
	h=To:Subject:From:Message-Id:Date; b=lsWMoPwsIy4hbxwttty1apsZxwt2dyhadfNKhWqDxmku+iq9c/pvf8vfVnAf31QclDFGWQUPUzrmCh+QQz1TFXXjPFWq6EQhcvbBNwitkBXhStgp5fIUwFZJ9i6GW7IvWlgdEw8yTEUnN4zEGuSsN0rHweS+FeTMVpR70uu+bqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWZTONu+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWZTONu+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED72EC19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 04:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775621134;
	bh=mNAHL11zExtVN+Nb+y6NUyvo1omPhfVU/2lFp62eaV0=;
	h=To:Subject:From:Date:From;
	b=bWZTONu+bo8a8YAL3GmLSW3ki/mB3ICoqtrK6/gU1deId337VjeYESytTBK/2oOpw
	 a5Y4GFxxexuCdTu/TrklYoP+P+3MRj7Aozg2gZhmqI5amTTeM7FlgxPn9bRNAYj+ts
	 6pmkjg84kBGMt1esTdZQL49ZrjevH6ihuZs9H+1+NHMO/fRh6LC1u2ttpYa7ta8c7w
	 Fw75NyokfLsnUmeYoAHYT+fdXfXefaXNhmT1m5UsY71/zSWbfO7n1WB8mGXFEpZGI4
	 ImODGC9AnEgFIdEIX//cZuaHoHQ7e/KlkD6fnEOnWQRJLLUFsoivMGM4pV3CWIRIQa
	 hlVrucw8JBmGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8DC8FD5F6A
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 04:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177562113380.24351.17066197315002782034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcb4d7081e9743e329a4b5aae7de8cde9bf82febc308db425148c9317f668526
Date: Wed, 08 Apr 2026 04:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775621133
