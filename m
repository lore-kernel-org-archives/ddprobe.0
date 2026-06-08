Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E38637757F
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 12:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780920874; cv=none; b=hAjYwonhqDd+jHYlKsVuO1Jm+9OQU7ahDQpnSmx0KOTY1fnIEqqUuLXs47BWeBIJO/YLQl1AHHvqzrRkXLEIfYQWhyXi1WNvL9K3MMvuI5apGATuCCkIIhqcp3PDhQIXST5tAbBpsmIuq2W6pDVd5fWgtb9BBzyxnoHlxX9cGWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780920874; c=relaxed/simple;
	bh=6WHjoFzGS5Sy9vaDtVMBK8LJkirzuumwK+k3jlfhnQE=;
	h=To:Subject:From:Message-Id:Date; b=bM+yA5n49/BaWGBbM7srvFO77uz1CWQ95pTL/3xwf0jsYlTgVu/0IQimCa3v9m4yeo4V/LBOG8iDOM9gxIKnwU/82YG9Lj/2CU+VsPDTzdCOT7k26Eh3wXkjKkC0QEW2zCFiY+I8Qh4q7/eRftb/0ud2K12z6/1io9Pu6vLnNzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=saIdh7Qc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="saIdh7Qc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF269C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 12:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780920873;
	bh=6WHjoFzGS5Sy9vaDtVMBK8LJkirzuumwK+k3jlfhnQE=;
	h=To:Subject:From:Date:From;
	b=saIdh7QcXPF3OPN6wqZUlhdw/DFt8BPKR52kKl6qkuHjNg1i6DOUzB+5GSCYSQvGK
	 fFzdu2Ip0UXg5SfMtmHP0zy10JsrHP64ptK6RoO65umAJ0o2zHvmJ2pWfWdEI8kqri
	 Wu/1p57yiqGvvyXNz199l6y4dKzVlRYbOBcfwF4pflho2N/5Fx4rPHEJImFTsnp+HL
	 jl+F6OdxG5RRSAbE8jo8n980gNR5cHNouIPN/Hr0pFAbvP+2zRaC0DfUtJH1WIx66n
	 hD7h4MQ6LziwmEnaGVl72PULO/zrvS4YMMjamPTDq3noTE2YndOGyLVBkt5ZXgk55S
	 XHtKB5bdh8qXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A899ECD8C9D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 12:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178092087368.23185.3181657133550396921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86143d88c3a776a73b64caf1c09903519c3e8ca6a69a7f829808eb1c5c4028b7
Date: Mon, 08 Jun 2026 12:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780920873
