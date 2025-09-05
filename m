Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D6A23D7F8
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757089794; cv=none; b=lU/QAQmhQMVZyWJZGDdGXlTr9pkc02/YpC9yQOabQIqK/9wNmj02NdF5Tv46dOHMSzk9Z0FrAO22AEJMy7XU4ZgoFEjhCLf80nilB10ZHXX1VI3w9F6nPI6DqmQGuPTWFHqbd+F1AK0OGW2QDygr/Y5nMvRDKGQ1o/caTiMDrw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757089794; c=relaxed/simple;
	bh=dvrgrSgn0+tHxDBQDuGhdIkjBTp3h/EPH6roExefKmg=;
	h=To:Subject:From:Message-Id:Date; b=gc2MC+iPDns1J2BUfWyQgpjQKd44mGMl5aYCvP6BSlR+QcPR8hAkOBisYxED1vwd5eHwcXnslaVDkqdmWOTNYR7K2OqFPZ0gqhkYWXq3Eqi2SFQm69iX3hELjIncquHMsCOxf6vyfD4AM6BJC35c0klQ0fwxLLoq7MsfTFjvXOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k/rlS1xl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k/rlS1xl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03BCC4CEFA
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757089793;
	bh=dvrgrSgn0+tHxDBQDuGhdIkjBTp3h/EPH6roExefKmg=;
	h=To:Subject:From:Date:From;
	b=k/rlS1xlSjhYagJvwnWK7vhRBCOI955xwcpTAqjAQWSrEJ2fI240NRVlDtDvlmmIX
	 R4sho+qhoaABCX6cFwUMdRaviliBb9F0ogjKW2nuhZGX4bqtmZAE0hDDu3IGMlGTwY
	 8oqBvVClaYGHeFsvldCl8LP10g1lEbAkXREsYVANaFYfcg2BEzXsqF2Mdbd4hq50t1
	 C3F3OkwbjANDyitwwyGGeoyNgaHl3vFv4dqEysbzI1TGXUYh/glgmUYxztLpUuLEBn
	 Rp+rs4nQcq8vPbD1Dwlq5zfDalfFYGbFe2OPB7a8Yd3LiV7xnVqUIMSBoqrG49AmLF
	 hxiPBbNov1MKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F199CA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175708979357.13426.2481263111431011304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4bd4e24cacc756bfd4c741b382218c8a6ac9ed686c664af6ae82d1e74c4c677
Date: Fri, 05 Sep 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757089793
